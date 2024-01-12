import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabScheduleCard extends StatelessWidget {
  final String? group;
  final String? day1;
  final String? day2;
  final String? time1;
  final String? time2;
  final String? time3;
  final String? slot1;
  final String? slot2;
  final String? slot3;
  const LabScheduleCard({
    super.key,
    this.group,
    this.slot1,
    this.slot2,
    this.slot3,
    this.day1,
    this.day2,
    this.time1,
    this.time2,
    this.time3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xffb9b1b6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Text(
              group!,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 41, 51, 104),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff4c4b5c),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    //color: Colors.red,
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 320,
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 24, 40, 54),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  day1!,
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 194, 202, 241),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 133, 119, 119),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            time1!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 24, 40, 54),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(),
                                          Text(
                                            slot1!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 24, 40, 54),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 133, 119, 119),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            time2!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 24, 40, 54),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(),
                                          Text(
                                            slot2!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 24, 40, 54),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 320,
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 24, 40, 54),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  day2!,
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 194, 202, 241),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 133, 119, 119),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            time3!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 24, 40, 54),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(),
                                          Text(
                                            slot3!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 24, 40, 54),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    /*  const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 133, 119, 119),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Column(
                                        children: [
                                         Text(
                                            time4!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 194, 202, 241),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(),
                                         Text(
                                            slot4!,
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 194, 202, 241),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                 */
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
