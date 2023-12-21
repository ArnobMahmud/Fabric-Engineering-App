import 'package:fabric_engineering_app/db/Level2/term2.dart';
import 'package:fabric_engineering_app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widget/course_segment.dart';

class Level2Term2Page extends StatelessWidget {
  const Level2Term2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2dfd2),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Level 2 - Term 2'),
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
