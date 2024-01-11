import 'package:flutter/material.dart';
import '../../widget/no_class.dart';

class Level3Term2Lab extends StatelessWidget {
  const Level3Term2Lab({super.key});

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
        message: 'Not added yet!',
        img: 'images/sun.svg',
      ),
    );
  }
}



  // body: ListView(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.all(16.0),
  //           child: Container(
  //             padding: const EdgeInsets.all(16.0),
  //             decoration: BoxDecoration(
  //               color: const Color(0xffcfbaba),
  //               borderRadius: BorderRadius.circular(15),
  //             ),
  //             child: Column(
  //               children: [
  //                 Text(
  //                   'Group - A',
  //                   style: GoogleFonts.roboto(
  //                     textStyle: const TextStyle(
  //                       fontSize: 24,
  //                       color: Color.fromARGB(255, 41, 51, 104),
  //                       fontWeight: FontWeight.w400,
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 20,
  //                 ),
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     SingleChildScrollView(
  //                       scrollDirection: Axis.horizontal,
  //                       child: Container(
  //                         decoration: BoxDecoration(
  //                           color: Color.fromARGB(255, 105, 64, 64),
  //                           borderRadius: BorderRadius.circular(5),
  //                         ),
  //                         //color: Colors.red,
  //                         padding: const EdgeInsets.all(16.0),
  //                         child: Container(
  //                           padding: const EdgeInsets.all(16.0),
  //                           color: Color.fromARGB(255, 58, 73, 86),
  //                           child: Column(
  //                             children: [
  //                               Text(
  //                                 'Wednesday',
  //                                 style: GoogleFonts.roboto(
  //                                   textStyle: const TextStyle(
  //                                     fontSize: 18,
  //                                     color: Color.fromARGB(255, 194, 202, 241),
  //                                     fontWeight: FontWeight.w400,
  //                                   ),
  //                                 ),
  //                               ),
  //                               const SizedBox(
  //                                 height: 10,
  //                               ),
  //                               Column(
  //                                 crossAxisAlignment: CrossAxisAlignment.center,
  //                                 children: [
  //                                   Container(
  //                                     padding: const EdgeInsets.all(16.0),
  //                                     decoration: BoxDecoration(
  //                                       color: const Color.fromARGB(
  //                                           255, 133, 119, 119),
  //                                       borderRadius: BorderRadius.circular(5),
  //                                     ),
  //                                     child: Column(
  //                                       children: [
  //                                         Text(
  //                                           '10:40AM - 12:20PM',
  //                                           style: GoogleFonts.roboto(
  //                                             textStyle: const TextStyle(
  //                                               fontSize: 18,
  //                                               color: Color.fromARGB(
  //                                                   255, 194, 202, 241),
  //                                               fontWeight: FontWeight.w400,
  //                                             ),
  //                                           ),
  //                                         ),
  //                                         const SizedBox(
  //                                           height: 10,
  //                                         ),
  //                                         const Divider(),
  //                                         Text(
  //                                           'Application of Computer in Fabric Manufacturing (ACFM)',
  //                                           style: GoogleFonts.roboto(
  //                                             textStyle: const TextStyle(
  //                                               fontSize: 18,
  //                                               color: Color.fromARGB(
  //                                                   255, 194, 202, 241),
  //                                               fontWeight: FontWeight.w400,
  //                                             ),
  //                                           ),
  //                                           textAlign: TextAlign.center,
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                   const SizedBox(
  //                                     height: 10,
  //                                   ),
  //                                   Container(
  //                                     padding: const EdgeInsets.all(16.0),
  //                                     decoration: BoxDecoration(
  //                                       color: const Color.fromARGB(
  //                                           255, 133, 119, 119),
  //                                       borderRadius: BorderRadius.circular(5),
  //                                     ),
  //                                     child: Column(
  //                                       children: [
  //                                         Text(
  //                                           '2:00PM - 3:40PM',
  //                                           style: GoogleFonts.roboto(
  //                                             textStyle: const TextStyle(
  //                                               fontSize: 18,
  //                                               color: Color.fromARGB(
  //                                                   255, 194, 202, 241),
  //                                               fontWeight: FontWeight.w400,
  //                                             ),
  //                                           ),
  //                                         ),
  //                                         const SizedBox(
  //                                           height: 10,
  //                                         ),
  //                                         const Divider(),
  //                                         Text(
  //                                           'Fabric Structure & Design (FSD)',
  //                                           style: GoogleFonts.roboto(
  //                                             textStyle: const TextStyle(
  //                                               fontSize: 18,
  //                                               color: Color.fromARGB(
  //                                                   255, 194, 202, 241),
  //                                               fontWeight: FontWeight.w400,
  //                                             ),
  //                                           ),
  //                                           textAlign: TextAlign.center,
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     )
  //                   ],
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
    