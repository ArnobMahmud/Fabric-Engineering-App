import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Chemistry1Resources extends StatefulWidget {
  const Chemistry1Resources({super.key});

  @override
  State<Chemistry1Resources> createState() => _Chemistry1ResourcesState();
}

class _Chemistry1ResourcesState extends State<Chemistry1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Chemistry I'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'chem1-1',
        ),
      ),
    );
  }
}
