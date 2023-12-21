import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class ACEResources extends StatefulWidget {
  const ACEResources({super.key});

  @override
  State<ACEResources> createState() => _ACEResourcesState();
}

class _ACEResourcesState extends State<ACEResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Automation & Control Engineering (ACE)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'ace3-2',
        ),
      ),
    );
  }
}
