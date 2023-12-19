import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class EMResources extends StatefulWidget {
  const EMResources({super.key});

  @override
  State<EMResources> createState() => _EMResourcesState();
}

class _EMResourcesState extends State<EMResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Engineering Materials (EM)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'em1-2',
        ),
      ),
    );
  }
}
