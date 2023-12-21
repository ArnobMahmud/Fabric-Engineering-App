import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class FYTResources extends StatefulWidget {
  const FYTResources({super.key});

  @override
  State<FYTResources> createState() => _FYTResourcesState();
}

class _FYTResourcesState extends State<FYTResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Fiber & Yarn Testing (FYT)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'fyt2-1',
        ),
      ),
    );
  }
}
