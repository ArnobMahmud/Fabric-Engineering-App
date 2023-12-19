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
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: const Color(0xffe0e0e0),
        title: Text(
          "Level 1",
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
                Navigator.pushNamed(context, '/l1t1');
              },
              semester: 'Term 1',
              course:
                  'Courses : Physics I, Chemistry I, Mathematics I, Business & Communicative English (BCE), Natural Textile Fiber (NTF).',
            ),
          ),
          Expanded(
            child: SemesterSegment(
               onTap: () {
                Navigator.pushNamed(context, '/l1t2');
              },
              semester: 'Term 2',
              course:
                  'Courses : Physics II, Chemistry II, Mathematics II, Engineering Materials (EM), Polymer Science & Engineering (PSE), Computer Programming (CP).',
            ),
          ),
        ],
      ),
    );
  }
}
