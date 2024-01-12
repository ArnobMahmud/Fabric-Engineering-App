import 'package:flutter/material.dart';
import '../../widget/no_class.dart';

class Level4Term1Exam extends StatelessWidget {
  const Level4Term1Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2dfd2),
      appBar: AppBar(
        backgroundColor: const Color(0xffe2dfd2),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Color.fromARGB(255, 41, 51, 104),
          ),
        ),
      ),
      body: const HandleUpdate(
        message: 'Not added yet!',
        img: 'images/sun.svg',
      ),
    );
  }
}