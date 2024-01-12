import 'package:fabric_engineering_app/widget/semester_segment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../db/hive_db.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({super.key});

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  final myBox = Hive.box('mybox');
  final FavLectureDB db = FavLectureDB();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2dfd2),
      appBar: AppBar(
        backgroundColor: const Color(0xffe2dfd2),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 41, 51, 104),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Bookmark",
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 41, 51, 104),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: db.favLecture.length,
        itemBuilder: (BuildContext context, index) {
          return const SemesterSegment(
            
          );
        },
      ),
    );
  }
}
