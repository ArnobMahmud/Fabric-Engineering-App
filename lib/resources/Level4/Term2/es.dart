import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class ESResources extends StatefulWidget {
  const ESResources({super.key});

  @override
  State<ESResources> createState() => _ESResourcesState();
}

class _ESResourcesState extends State<ESResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Environmental Studies (ES)',
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
