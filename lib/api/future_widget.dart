import 'package:flutter/material.dart';
import '../models/model.dart';
import '../widget/error_page.dart';
import '../widget/lecture_segment.dart';
import '../widget/no_class.dart';
import 'api_handler.dart';

class FutureWidget extends StatelessWidget {
  final String? endpoint;
  const FutureWidget({super.key, this.endpoint});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Resource>>(
      future: APIHandler().getResources(endpoint!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.data?.isEmpty == true) {
          return const NoClass();
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
    );
  }
}
 