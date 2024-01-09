import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class PPCResources extends StatefulWidget {
  const PPCResources({super.key});

  @override
  State<PPCResources> createState() => _PPCResourcesState();
}

class _PPCResourcesState extends State<PPCResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Production Planning & Control',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'ppc4-2',
        ),
      ),
    );
  }
}
