import 'package:flutter/material.dart';
import '../../widget/no_class.dart';

class Level2Term2Lab extends StatelessWidget {
  const Level2Term2Lab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        message: 'Semester end!',
        img: 'images/sun.svg',
      ),
    );
  }
}
