import 'package:fabric_engineering_app/widget/semester_segment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Level4Page extends StatelessWidget {
  const Level4Page({super.key});

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
          "Level 4",
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
              Navigator.pushNamed(context, '/l4t1');
            },
            semester: 'Term 1',
            course:
                'Courses :\n~ Sociology\n~ Fabric Testing & Quality Control (FTQC)\n~ Knitting(Knit) II\n~ Special Fabric Production (SFP)\n~ Textile & Apparel Merchandizing (TAM).',
          ),
          SemesterSegment(
            onTap: () {
              Navigator.pushNamed(context, '/l4t2');
            },
            semester: 'Term 2',
            course:
                'Courses :\n~ Nonwoven (NWvn)\n~ Technical Textile (TT)\n~ Environmental Studies (ES)\n~ Production Planning & Control (PPC).',
          ),
        ],
      ),
    );
  }
}
