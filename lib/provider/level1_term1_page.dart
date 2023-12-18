import 'package:fabric_engineering_app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../db/Level1/term1.dart';
import '../widget/course_segment.dart';

class Level1Term1Page extends StatelessWidget {
  const Level1Term1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfbaba),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Level 1 - Term 1'),
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
