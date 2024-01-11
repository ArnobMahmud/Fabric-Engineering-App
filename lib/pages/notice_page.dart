import 'package:fabric_engineering_app/api/web_view.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return const OpenWebView(
      title: 'Butex Notices',
      url: 'https://www.butex.edu.bd/news-archive/',
    );
  }
}


/*
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
*/