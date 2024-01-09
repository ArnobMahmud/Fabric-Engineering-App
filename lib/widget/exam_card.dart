import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamCard extends StatelessWidget {
  final String? title;
  final String? imgData;
  final String? nav;

  const ExamCard({
    super.key,
    this.title,
    this.imgData,
    this.nav,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, nav!);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          //color: Color(0xffb5c99a),
          color: Color(0xffB0A4A4),
          boxShadow: [
            BoxShadow(
              color: Color(0xffcabdbd),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              SvgPicture.asset(
                imgData!,
                height: 100,
                width: 100,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                title!,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff393646),
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
