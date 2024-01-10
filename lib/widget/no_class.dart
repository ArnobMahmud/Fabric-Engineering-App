import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HandleUpdate extends StatelessWidget {
  final String? message;
  final String? img;
  const HandleUpdate({
    super.key,
    required this.message,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            img!,
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            message!,
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(159, 80, 58, 88),
            ),
          ),
        ],
      ),
    );
  }
}
