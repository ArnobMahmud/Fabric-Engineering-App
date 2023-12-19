import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Color.fromARGB(255, 41, 51, 104),
        ),
      ),
      backgroundColor: const Color(0xffcfbaba),
      title: Expanded(
        flex: 0,
        child: AutoSizeText(
          title!,
          maxFontSize: 26,
          minFontSize: 24,
          style: GoogleFonts.zillaSlab(
            textStyle: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 41, 51, 104),
              fontWeight: FontWeight.w400,
            ),
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
