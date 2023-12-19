import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class AM1Resources extends StatefulWidget {
  const AM1Resources({super.key});

  @override
  State<AM1Resources> createState() => _AM1ResourcesState();
}

class _AM1ResourcesState extends State<AM1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Apparel Manufacturing I'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'am2-2',
        ),
      ),
    );
  }
}
