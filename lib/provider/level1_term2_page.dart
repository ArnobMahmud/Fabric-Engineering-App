import 'package:fabric_engineering_app/db/Level1/term2.dart';
import 'package:fabric_engineering_app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widget/course_segment.dart';

class Level1Term2Page extends StatelessWidget {
  const Level1Term2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffcfbaba),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Level 1 - Term 2'),
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
