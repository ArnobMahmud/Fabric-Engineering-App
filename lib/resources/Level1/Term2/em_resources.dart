import 'package:fabric_engineering_app/api/api_handler.dart';
import 'package:fabric_engineering_app/models/model.dart';
import 'package:fabric_engineering_app/widget/error_page.dart';
import 'package:fabric_engineering_app/widget/lecture_segment.dart';
import 'package:flutter/material.dart';
import '../../../widget/custom_app_bar.dart';

class EMResources extends StatefulWidget {
  const EMResources({super.key});

  @override
  State<EMResources> createState() => _EMResourcesState();
}

class _EMResourcesState extends State<EMResources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfbaba),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Engineering Materials (EM)'),
      ),
      body: Center(
        child: FutureBuilder<List<Resource>>(
          future: APIHandler().getResources('em1-2'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              final res = snapshot.data!;
              return ListView.builder(
                itemCount: res.length,
                itemBuilder: (context, index) {
                  final val = res[index];
                  return LectureSegment(value: val);
                },
              );
            } else {
              return const ErrorPage();
            }
          },
        ),
      ),
    );
  }
}
