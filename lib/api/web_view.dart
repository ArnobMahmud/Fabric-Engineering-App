import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';

class WebView {
  Future getUrlLaunch(String url, ControllerCallback controller) async {
    WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(
        Uri.parse(url),
      );
  }
}
