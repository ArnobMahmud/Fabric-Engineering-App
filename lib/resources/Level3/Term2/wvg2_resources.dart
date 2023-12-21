import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Wvg2Resources extends StatefulWidget {
  const Wvg2Resources({super.key});

  @override
  State<Wvg2Resources> createState() => _Wvg2ResourcesState();
}

class _Wvg2ResourcesState extends State<Wvg2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Weaving II',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'wvg3-2',
        ),
      ),
    );
  }
}
