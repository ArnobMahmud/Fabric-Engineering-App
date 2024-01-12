import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import '../models/model.dart';
import '../screen/error_screen.dart';
import '../widget/lecture_segment.dart';
import '../widget/no_class.dart';
import 'api_handler.dart';

class FutureWidget extends StatefulWidget {
  final String? endpoint;
  const FutureWidget({super.key, this.endpoint});

  @override
  State<FutureWidget> createState() => _FutureWidgetState();
}

class _FutureWidgetState extends State<FutureWidget> {
  bool isConnected = false;
  late StreamSubscription sub;

  @override
  void initState() {
    super.initState();
    sub = Connectivity().onConnectivityChanged.listen(
      (event) {
        setState(
          () {
            isConnected = (event != ConnectivityResult.none);
          },
        );
      },
    );
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  } 

  @override
  Widget build(BuildContext context) {
    return isConnected
        ? FutureBuilder<List<Resource>>(
            future: APIHandler().getResources(widget.endpoint!),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.data?.isEmpty == true) {
                return const HandleUpdate(
                    message: 'No Online Classes!', img: 'images/server.svg');
              } else if (snapshot.hasData) {
                final res = snapshot.data!;
                return Scrollbar(
                  thickness: 5,
                  scrollbarOrientation: ScrollbarOrientation.right,
                  thumbVisibility: true,
                  radius: const Radius.circular(5),
                  interactive: true,
                  child: ListView.builder(
                    itemCount: res.length,
                    itemBuilder: (context, index) {
                      final val = res[index];
                      return LectureSegment(value: val);
                    },
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        : const ErrorScreen();
  }
}
