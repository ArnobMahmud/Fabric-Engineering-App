import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/model.dart';

class CourseSegment extends StatelessWidget {
  final Course? info;

  const CourseSegment({super.key, this.info});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Future.delayed(
          const Duration(seconds: 1),
          () {
            Navigator.pushNamed(context, info!.nav!);
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 10, 10),
        padding: const EdgeInsets.all(10),
        //height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffcfbaba),
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(133, 91, 87, 87),
              width: 1,
            ),
            top: BorderSide(
              color: Color.fromARGB(133, 91, 87, 87),
              width: 1,
            ),
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/book.svg',
              height: 70,
              width: 70,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          info!.name!,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(159, 87, 68, 94),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    info!.courseCode!,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(159, 87, 68, 94),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          info!.lecturer!,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(159, 87, 68, 94),
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
