import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class EconResources extends StatefulWidget {
  const EconResources({super.key});

  @override
  State<EconResources> createState() => _EconResourcesState();
}

class _EconResourcesState extends State<EconResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Economics'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'econ3-1',
        ),
      ),
    );
  }
}
