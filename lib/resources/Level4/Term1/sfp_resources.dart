import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class SFPResources extends StatefulWidget {
  const SFPResources({super.key});

  @override
  State<SFPResources> createState() => _SFPResourcesState();
}

class _SFPResourcesState extends State<SFPResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Special Fabric Production (SFP)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: '',
        ),
      ),
    );
  }
}
