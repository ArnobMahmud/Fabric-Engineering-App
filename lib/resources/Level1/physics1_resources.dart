import 'package:fabric_engineering_app/models/model.dart';
import 'package:fabric_engineering_app/widget/error_page.dart';
import 'package:fabric_engineering_app/widget/lecture_segment.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../widget/custom_app_bar.dart';

class Physics1Resources extends StatefulWidget {
  const Physics1Resources({super.key});

  @override
  State<Physics1Resources> createState() => _Physics1ResourcesState();
}

Future<List<Resource>> resourceFuture = getResource();

Future<List<Resource>> getResource() async {
  var url = Uri.parse(
      "https://fabric-web-backend-server.onrender.com/api/v1/resources/phy1-1");
  final response = await http.get(url);
  final List body = json.decode(response.body);
  return body.map((e) => Resource.fromJson(e)).toList();
}

class _Physics1ResourcesState extends State<Physics1Resources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcfbaba),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Physics I'),
      ),
      body: Center(
        child: FutureBuilder<List<Resource>>(
          future: resourceFuture,
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
