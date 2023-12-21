import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class YM2Resources extends StatefulWidget {
  const YM2Resources({super.key});

  @override
  State<YM2Resources> createState() => _YM2ResourcesState();
}

class _YM2ResourcesState extends State<YM2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Yarn Manufacturing II'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'ym3-1',
        ),
      ),
    );
  }
}
