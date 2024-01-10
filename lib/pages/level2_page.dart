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
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
        ),
        backgroundColor: const Color(0xffe0e0e0),
        title: Text(
          "Level 2",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 41, 51, 104),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SemesterSegment(
            onTap: () {
              Navigator.pushNamed(context, '/l2t1');
            },
            semester: 'Term 1',
            course:
                'Courses :\n~ Statistics\n~ Fiber & Yarn Testing (FYT)\n~ Man-made Textile Fibers (MMTF)\n~ Yarn Manufacturing(YM) I\n~ Weaving Preparatory Process (WvgPP)\n~ Fundamentals of Mechanical Engineering (FME).',
          ),
          SemesterSegment(
            onTap: () {
              Navigator.pushNamed(context, '/l2t2');
            },
            semester: 'Term 2',
            course:
                'Courses :\n~ Textile Physics (TP)\n~ Weaving(Wvg) I\n~ Wet Processing(WP) I\n~ Fundamentals of Marketing (FMkt)\n~ Apparel Manufacturing(AM) I\n~ Fundamentals of Electrical & Electronics Engineering (FEEE).',
          ),
        ],
      ),
    );
  }
}
