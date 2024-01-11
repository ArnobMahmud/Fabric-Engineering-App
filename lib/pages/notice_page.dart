import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../screen/error_screen.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
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

  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse("https://www.butex.edu.bd/news-archive/"));

  @override
  Widget build(BuildContext context) {
    return isConnected
        ? Scaffold(
            backgroundColor: const Color(0xffe2dfd2),
            appBar: AppBar(
              backgroundColor: const Color(0xffe2dfd2),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 41, 51, 104),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'Butex Notices',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 41, 51, 104),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            body: SizedBox(
              width: double.infinity,
              child: WebViewWidget(
                controller: _controller,
              ),
            ),
          )
        : const ErrorScreen();
  }
}
