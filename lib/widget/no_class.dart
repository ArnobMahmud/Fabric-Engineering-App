import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NoClass extends StatelessWidget {
  const NoClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'images/server.svg',
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "No Online Classes!",
            style: GoogleFonts.roboto(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(159, 80, 58, 88),
            ),
          ),
        ],
      ),
    );
  }
}
