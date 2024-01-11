import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/lab_schedule_card.dart';

class Level3Term2Lab extends StatelessWidget {
  const Level3Term2Lab({super.key});

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
        title: Text(
          'Level 3 - Term 2 Lab',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 41, 51, 104),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: ListView(
        children: const [
          LabScheduleCard(
            group: 'Group A',
            day1: 'Wednesday',
            day2: 'Thursday',
            time1: '10:40AM - 12:20PM',
            time2: '2:00PM - 3:40PM',
            time3: '9:50AM - 11:30AM',
            slot1: 'Application of Computer in Fabric Manufacturing (ACFM)',
            slot2: 'Fabric Structure & Design (FSD)',
            slot3: 'Weaving(Wvg) II',
          ),
          LabScheduleCard(
            group: 'Group B',
            day1: 'Sunday',
            day2: 'Thursday',
            time1: '10:40AM - 12:20PM',
            time2: '3:40PM - 5:20PM',
            time3: '9:50AM - 11:30AM',
            slot1: 'Weaving(Wvg) II',
            slot2: 'Fabric Structure & Design (FSD)',
            slot3: 'Application of Computer in Fabric Manufacturing (ACFM)',
          ),
          LabScheduleCard(
            group: 'Group C',
            day1: 'Monday',
            day2: 'Wednesday',
            time1: '11:30AM - 1:10PM',
            time2: '2:00PM - 3:40PM',
            time3: '10:40AM - 12:20PM',
            slot1: 'Application of Computer in Fabric Manufacturing (ACFM)',
            slot2: 'Fabric Structure & Design (FSD)',
            slot3: 'Weaving(Wvg) II',
          ),
        ],
      ),
    );
  }
}
