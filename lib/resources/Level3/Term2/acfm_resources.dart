import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class ACFMResources extends StatefulWidget {
  const ACFMResources({super.key});

  @override
  State<ACFMResources> createState() => _ACFMResourcesState();
}

class _ACFMResourcesState extends State<ACFMResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Application of Computer in Fabric Manufacturing (ACFM)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'acfm3-2',
        ),
      ),
    );
  }
}
