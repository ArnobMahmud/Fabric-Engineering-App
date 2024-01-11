import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../screen/error_screen.dart';

class OpenWebView extends StatefulWidget {
  final String? url;
  final String? title;

  const OpenWebView({
    super.key,
    this.title,
    this.url,
  });

  @override
  State<OpenWebView> createState() => _OpenWebViewState();
}

class _OpenWebViewState extends State<OpenWebView> {
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

  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return isConnected
        ? Scaffold(
            backgroundColor: const Color(0xffe2dfd2),
            appBar: AppBar(
              backgroundColor: const Color(0xffe2dfd2),
              title: Text(
                widget.title!,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 41, 51, 104),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Color.fromARGB(255, 41, 51, 104),
                ),
              ),
            ),
            body: WebViewWidget(
              controller: WebViewController()
                ..setJavaScriptMode(JavaScriptMode.unrestricted)
                ..loadRequest(
                  Uri.parse(widget.url!),
                ),
            ),
          )
        : const ErrorScreen();
  }
}
