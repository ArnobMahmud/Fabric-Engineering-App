import 'package:fabric_engineering_app/widget/semester_segment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Level1Page extends StatelessWidget {
  const Level1Page({super.key});

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
          "Level 1",
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
              Navigator.pushNamed(context, '/l1t1');
            },
            semester: 'Term 1',
            course:
                'Courses :\n~ Physics I\n~ Chemistry I\n~ Mathematics I\n~ Business & Communicative English (BCE)\n~ Natural Textile Fiber (NTF).',
          ),
          SemesterSegment(
            onTap: () {
              Navigator.pushNamed(context, '/l1t2');
            },
            semester: 'Term 2',
            course:
                'Courses :\n~ Physics II\n~ Chemistry II\n~ Mathematics II\n~ Engineering Materials (EM)\n~ Polymer Science & Engineering (PSE)\n~ Computer Programming (CP).',
          ),
        ],
      ),
    );
  }
}
