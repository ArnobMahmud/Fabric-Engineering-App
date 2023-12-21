import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Physics2Resources extends StatefulWidget {
  const Physics2Resources({super.key});

  @override
  State<Physics2Resources> createState() => _Physics2ResourcesState();
}

class _Physics2ResourcesState extends State<Physics2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Physics II'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'em1-2',
        ),
      ),
    );
  }
}
