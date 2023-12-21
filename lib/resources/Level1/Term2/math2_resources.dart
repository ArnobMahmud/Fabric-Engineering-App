import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Math2Resources extends StatefulWidget {
  const Math2Resources({super.key});

  @override
  State<Math2Resources> createState() => _Math2ResourcesState();
}

class _Math2ResourcesState extends State<Math2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Math II'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'math1-2',
        ),
      ),
    );
  }
}
