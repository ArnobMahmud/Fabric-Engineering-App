// ignore_for_file: prefer_const_constructors

import 'package:fabric_engineering_app/widget/semester_segment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Level3Page extends StatelessWidget {
  const Level3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Color(0xffe0e0e0),
        title: Text(
          "Level 3",
          style: GoogleFonts.zillaSlab(
            textStyle: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 41, 51, 104),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SemesterSegment(
              onTap: () {
                Navigator.pushNamed(context, '/l3t1');
              },
              semester: 'Term 1',
              course:
                  'Courses : Yarn Manufacturing(YM) II, Wet Processing(WP) II, Economics, Apparel Manufacturing(AM) II, Knitting(Knit) I, Industrial Management (IM).',
            ),
          ),
          Expanded(
            child: SemesterSegment(
              onTap: () {
                Navigator.pushNamed(context, '/l3t2');
              },
              semester: 'Term 2',
              course:
                  'Courses : Application of Computer in Fabric Manufacturing (ACFM), Fabric Structure & Design (FSD), Weaving(Wvg) II, Automation & Control Engineering (ACE), Accounting & Cost Management (ACM).',
            ),
          ),
        ],
      ),
    );
  }
}
