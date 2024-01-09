import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class FTQCResources extends StatefulWidget {
  const FTQCResources({super.key});

  @override
  State<FTQCResources> createState() => _FTQCResourcesState();
}

class _FTQCResourcesState extends State<FTQCResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Fabric Testing & Quality Control (FTQC)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'ftqc4-1',
        ),
      ),
    );
  }
}
