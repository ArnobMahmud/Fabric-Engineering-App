import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class YM1Resources extends StatefulWidget {
  const YM1Resources({super.key});

  @override
  State<YM1Resources> createState() => _YM1ResourcesState();
}

class _YM1ResourcesState extends State<YM1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Yarn Manufacturing I'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'ym2-1',
        ),
      ),
    );
  }
}
