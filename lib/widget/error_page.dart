import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'images/error.svg',
            height: 300,
            width: 300,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "No Data Available",
            style: GoogleFonts.roboto(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color:const Color.fromARGB(159, 80, 58, 88),
            ),
          ),
        ],
      ),
    );
  }
}
