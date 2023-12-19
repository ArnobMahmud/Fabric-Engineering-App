import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              'images/welcome.svg',
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "Welcome ",
              style: GoogleFonts.zenAntique(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(159, 132, 113, 139),
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(
                  context,
                  '/home',
                );
              },
              child: Container(
                height: 70,
                width: width * .75,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  color: Color.fromARGB(255, 19, 41, 60),
                ),
                child: Center(
                  child: Text(
                    "Explore",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(210, 236, 190, 252),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Developed by Arnob Mahmud",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(210, 184, 170, 188),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
