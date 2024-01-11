import 'package:fabric_engineering_app/models/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LectureSegment extends StatefulWidget {
  final Resource? value;
  const LectureSegment({super.key, this.value});

  @override
  State<LectureSegment> createState() => _LectureSegmentState();
}

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw "Can't not launch $url";
  }
}

class _LectureSegmentState extends State<LectureSegment> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchUrl(widget.value!.driveLink!);
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 10, 10),
        padding: const EdgeInsets.all(10),
        //height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(133, 91, 87, 87),
              width: 2,
            ),
            top: BorderSide(
              color: Color.fromARGB(133, 91, 87, 87),
              width: 1,
            ),
          ),
          color: Color(0xffcfbaba),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/book.svg',
              height: 70,
              width: 70,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.value!.discussedTopics!,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(159, 87, 68, 94),
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.value!.date!,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(159, 87, 68, 94),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.value!.lecturer!,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(159, 87, 68, 94),
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
