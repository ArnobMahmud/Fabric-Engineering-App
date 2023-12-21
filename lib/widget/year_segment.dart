import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class YearSegment extends StatelessWidget {
  final String? name;
  final String? nav;
  const YearSegment({
    super.key,
    this.name,
    this.nav,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, nav!);
      },
      child: Container(
        height: 150,
        width: width * .85,
        margin: const EdgeInsets.fromLTRB(0, 20, 30, 5),
        //padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(50),
          ),
          color: Color(0xffe8d3b5),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(245, 176, 154, 197),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(1, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 150,
                width: 120,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    bottomLeft: Radius.circular(50)
                  ),
                  color: Color.fromARGB(255, 153, 139, 137),
                ),
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Container(
            //     height: 50,
            //     width: 50,
            //     decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(30),
            //       ),
            //       color: Color.fromARGB(255, 153, 139, 137),
            //     ),
            //     child: const Center(
            //       child: Icon(
            //         Icons.ac_unit_rounded,
            //         size: 30,
            //         color: Color.fromARGB(255, 39, 60, 81),
            //       ),
            //     ),
            //   ),
            // ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'images/sem.svg',
                  height: 80,
                  width: 80,
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      name!,
                      style: GoogleFonts.zillaSlab(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 41, 51, 104),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
