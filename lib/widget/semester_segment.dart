import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SemesterSegment extends StatelessWidget {
  final String? nav;
  final String? semester;
  final String? course;
  final VoidCallback? onTap;
  const SemesterSegment({
    super.key,
    this.nav,
    this.semester,
    this.course,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffcfbaba),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 173, 172, 172),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    semester!,
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(221, 94, 70, 102),
                    ),
                  ),
                  Text(
                    course!,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(159, 70, 56, 75),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(30),
                    ),
                    color: Color.fromARGB(255, 153, 139, 137),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.ac_unit_rounded,
                      size: 30,
                      color: Color.fromARGB(255, 39, 60, 81),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
