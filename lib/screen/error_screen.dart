import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffe2dfd2),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/internet.png',
                height: 350,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Seems like you\'re in offline.',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 29, 69, 90),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                softWrap: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Please check your Internet Connection!',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 37, 85, 109),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                softWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
