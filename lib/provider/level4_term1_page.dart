import 'package:fabric_engineering_app/db/Level4/term1.dart';
import 'package:fabric_engineering_app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widget/course_segment.dart';

class Level4Term1Page extends StatelessWidget {
  const Level4Term1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2dfd2),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Level 4 - Term 1'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (BuildContext context, index) {
          final info = courses[index];
          return CourseSegment(
            info: info,
          );
        },
      ),
    );
  }
}
