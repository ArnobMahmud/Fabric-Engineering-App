import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Wvg1Resources extends StatefulWidget {
  const Wvg1Resources({super.key});

  @override
  State<Wvg1Resources> createState() => _Wvg1ResourcesState();
}

class _Wvg1ResourcesState extends State<Wvg1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Weaving I',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'wvg2-2',
        ),
      ),
    );
  }
}
