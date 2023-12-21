import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class FSDResources extends StatefulWidget {
  const FSDResources({super.key});

  @override
  State<FSDResources> createState() => _FSDResourcesState();
}

class _FSDResourcesState extends State<FSDResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Fabric Structure & Design (FSD)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'fsd3-2',
        ),
      ),
    );
  }
}
