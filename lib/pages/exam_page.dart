import 'package:fabric_engineering_app/db/exam_data.dart';
import 'package:fabric_engineering_app/widget/exam_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
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
          'Exams',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 41, 51, 104),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: examData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: aspectRatio / .85,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ExamCard(
            title: examData[index].title,
            imgData: examData[index].imgData,
            nav: examData[index].nav,
          );
        },
      ),
    );
  }
}
