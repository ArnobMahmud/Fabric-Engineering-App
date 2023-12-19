import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Chemistry2Resources extends StatefulWidget {
  const Chemistry2Resources({super.key});

  @override
  State<Chemistry2Resources> createState() => _Chemistry2ResourcesState();
}

class _Chemistry2ResourcesState extends State<Chemistry2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Chemistry II'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'chem1-2',
        ),
      ), );
  }
}
