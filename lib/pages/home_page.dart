import 'package:fabric_engineering_app/db/year.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/year_segment.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 249, 213),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 249, 213),
        title: Text(
          "Fabric Engineering",
          style: GoogleFonts.roboto(
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(159, 87, 68, 94),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 249, 227, 161),
                    //color: Color.fromARGB(255, 237, 221, 165),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(150),
                      bottomLeft: Radius.circular(200),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 249, 227, 161),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 249, 227, 161),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 249, 227, 161),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    height: 200,
                    width: width * .55,
                    //color: Colors.red,
                    child: const Center(
                      child: AutoSizeText(
                        '''Fabric Engineering is one of the basic textile engineering branches with its large application in weaving, knitting and non-woven.''',
                        maxLines: 10,
                        minFontSize: 14,
                        maxFontSize: 19,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(217, 44, 43, 45),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: width * .45,
                    child: SvgPicture.asset('images/town.svg'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffcfb5e8),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
                child: ListView.builder(
                  //scrollDirection: Axis.horizontal,
                  itemCount: year.length,
                  itemBuilder: (BuildContext context, int index) {
                    final sem = year[index];
                    return YearSegment(
                      name: sem.name,
                      nav: sem.nav,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
