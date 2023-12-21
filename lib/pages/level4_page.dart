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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: const Color(0xffe0e0e0),
        title: Text(
          "Level 4",
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
                Navigator.pushNamed(context, '/l4t1');
              },
              semester: 'Term 1',
              course:
                  'Courses : Sociology, Fabric Testing & Quality Control (FTQC), Knitting(Knit) II, Special Fabric Production (SFP), Textile & Apparel Merchandizing (TAM).',
            ),
          ),
          Expanded(
            child: SemesterSegment(
              onTap: () {
                Navigator.pushNamed(context, '/l4t2');
              },
              semester: 'Term 2',
              course:
                  'Courses : Sociology, Fabric Testing & Quality Control (FTQC), Knitting(Knit) II, Special Fabric Production (SFP), Textile & Apparel Merchandizing (TAM).',
            ),
          ),
        ],
      ),
    );
  }
}
