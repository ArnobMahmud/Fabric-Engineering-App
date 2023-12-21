import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class AM2Resources extends StatefulWidget {
  const AM2Resources({super.key});

  @override
  State<AM2Resources> createState() => _AM2ResourcesState();
}

class _AM2ResourcesState extends State<AM2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Apparel Manufacturing II'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'am3-1',
        ),
      ),
    );
  }
}
