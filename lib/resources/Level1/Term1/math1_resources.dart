import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Math1Resources extends StatefulWidget {
  const Math1Resources({super.key});

  @override
  State<Math1Resources> createState() => _Math1ResourcesState();
}

class _Math1ResourcesState extends State<Math1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Math I'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'math1-1',
        ),
      ), );
  }
}
