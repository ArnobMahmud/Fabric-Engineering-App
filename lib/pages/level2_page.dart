import 'package:fabric_engineering_app/widget/semester_segment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Level2Page extends StatelessWidget {
  const Level2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e0e0),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: const Color(0xffe0e0e0),
        title: Text(
          "Level 2",
          style: GoogleFonts.roboto(
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
                Navigator.pushNamed(context, '/l2t1');
              },
              semester: 'Term 1',
              course:
                  'Courses : Statistics, Fiber & Yarn Testing (FYT), Man-made Textile Fibers (MMTF), Yarn Manufacturing(YM) I, Weaving Preparatory Process (WvgPP), Fundamentals of Mechanical Engineering (FME).',
            ),
          ),
          Expanded(
            child: SemesterSegment(
              onTap: () {
                Navigator.pushNamed(context, '/l2t2');
              },
              semester: 'Term 2',
              course:
                  'Courses : Textile Physics (TP), Weaving(Wvg) I, Wet Processing(WP) I, Fundamentals of Marketing (FMkt), Apparel Manufacturing(AM) I, Fundamentals of Electrical & Electronics Engineering (FEEE).',
            ),
          ),
        ],
      ),
    );
  }
}
