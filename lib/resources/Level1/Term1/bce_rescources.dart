import 'package:fabric_engineering_app/api/api_handler.dart';
import 'package:fabric_engineering_app/models/model.dart';
import 'package:flutter/material.dart';
import '../../../widget/custom_app_bar.dart';
import '../../../widget/error_page.dart';
import '../../../widget/lecture_segment.dart';

class BCEResources extends StatefulWidget {
  const BCEResources({super.key});

  @override
  State<BCEResources> createState() => _BCEResourcesState();
}

class _BCEResourcesState extends State<BCEResources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfbaba),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Business & Communicative English (BCE)'),
      ),
      body: Center(
        child: FutureBuilder<List<Resource>>(
          future: APIHandler().getResources('bce1-1'),
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
