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
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, nav!);
      },
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          height: height * .20,
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Color(0xffe8d3b5),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(245, 125, 122, 128),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(1, 2), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: height * .20,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Color(0xffB0A4A4),
                  ),
                ),
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
                      bottomLeft: Radius.circular(20),
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
                    'images/chart.svg',
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
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 22,
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
      ),
    );
  }
}
