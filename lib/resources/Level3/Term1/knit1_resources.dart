import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Knit1Resources extends StatefulWidget {
  const Knit1Resources({super.key});

  @override
  State<Knit1Resources> createState() => _Knit1ResourcesState();
}

class _Knit1ResourcesState extends State<Knit1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Knitting I'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'knit3-1',
        ),
      ),
    );
  }
}
