import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Knit2Resources extends StatefulWidget {
  const Knit2Resources({super.key});

  @override
  State<Knit2Resources> createState() => _Knit2ResourcesState();
}

class _Knit2ResourcesState extends State<Knit2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Knitting II',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'knit4-1',
        ),
      ),
    );
  }
}
