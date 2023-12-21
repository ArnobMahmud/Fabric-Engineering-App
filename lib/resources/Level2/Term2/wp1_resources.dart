import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class WP1Resources extends StatefulWidget {
  const WP1Resources({super.key});

  @override
  State<WP1Resources> createState() => _WP1ResourcesState();
}

class _WP1ResourcesState extends State<WP1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Wet Processing (WP) I',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'wp2-2',
        ),
      ),
    );
  }
}
