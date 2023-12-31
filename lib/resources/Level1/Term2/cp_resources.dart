import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class CPResources extends StatefulWidget {
  const CPResources({super.key});

  @override
  State<CPResources> createState() => _CPResourcesState();
}

class _CPResourcesState extends State<CPResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Computer Programming (CP)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'cp1-2',
        ),
      ), );
  }
}
