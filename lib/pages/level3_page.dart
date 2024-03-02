import 'package:fabric_engineering_app/widget/semester_segment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Level3Page extends StatelessWidget {
  const Level3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e0e0),
      appBar: AppBar(
        scrolledUnderElevation: 0,
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
          "Level 3",
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
              Navigator.pushNamed(context, '/l3t1');
            },
            semester: 'Term 1',
            course:
                'Courses :\n~ Yarn Manufacturing(YM) II\n~ Wet Processing(WP) II\n~ Economics\n~ Apparel Manufacturing(AM) II\n~ Knitting(Knit) I\n~ Industrial Management (IM).',
          ),
          SemesterSegment(
            onTap: () {
              Navigator.pushNamed(context, '/l3t2');
            },
            semester: 'Term 2',
            course:
                'Courses :\n~ Application of Computer in Fabric Manufacturing (ACFM)\n~ Fabric Structure & Design (FSD)\n~ Weaving(Wvg) II\n~ Automation & Control Engineering (ACE)\n~ Accounting & Cost Management (ACM).',
          ),
        ],
      ),
    );
  }
}
