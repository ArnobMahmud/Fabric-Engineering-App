import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class IMResources extends StatefulWidget {
  const IMResources({super.key});

  @override
  State<IMResources> createState() => _IMResourcesState();
}

class _IMResourcesState extends State<IMResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Industrial Management'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'im3-1',
        ),
      ),
    );
  }
}
