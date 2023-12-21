import 'package:fabric_engineering_app/db/year.dart';
import 'package:fabric_engineering_app/widget/year_segment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2dfd2),
      appBar: AppBar(
        backgroundColor: const Color(0xffe2dfd2),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 41, 51, 104),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Resources',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 41, 51, 104),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: year.length,
        itemBuilder: (BuildContext context, int index) {
          return YearSegment(
            name: year[index].name,
            nav: year[index].nav,
          );
        },
      ),
    );
  }
}
