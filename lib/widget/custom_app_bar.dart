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
      backgroundColor: const Color(0xffe2dfd2),
      title: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Text(
              title!,
              style: GoogleFonts.roboto(
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
        ],
      ),
    );
  }
}
