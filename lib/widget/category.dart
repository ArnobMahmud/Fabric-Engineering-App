import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? imgData;
  final String? nav;

  const Category({
    super.key,
    this.title,
    this.subTitle,
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
        height: 100,
        width: 200,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
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
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff393646),
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  subTitle!,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff404258),
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
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