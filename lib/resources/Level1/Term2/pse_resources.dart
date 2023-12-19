import 'package:fabric_engineering_app/api/api_handler.dart';
import 'package:fabric_engineering_app/models/model.dart';
import 'package:fabric_engineering_app/widget/error_page.dart';
import 'package:fabric_engineering_app/widget/lecture_segment.dart';
import 'package:flutter/material.dart';
import '../../../widget/custom_app_bar.dart';

class PSEResources extends StatefulWidget {
  const PSEResources({super.key});

  @override
  State<PSEResources> createState() => _PSEResourcesState();
}

class _PSEResourcesState extends State<PSEResources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfbaba),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Polymer Science & Engineering (PSE)'),
      ),
      body: Center(
        child: FutureBuilder<List<Resource>>(
          future: APIHandler().getResources('pse1-2'),
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
