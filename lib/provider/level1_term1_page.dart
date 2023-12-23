import 'package:fabric_engineering_app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../db/Level1/term1.dart';
import '../widget/course_segment.dart';

class Level1Term1Page extends StatelessWidget {
  const Level1Term1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Level 1 - Term 1'),
      ),
      body: Container(
        color: const Color(0xffe2dfd2),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: (BuildContext context, index) {
            final info = courses[index];
            return CourseSegment(
              info: info,
            );
          },
        ),
      ),
    );
  }
}
