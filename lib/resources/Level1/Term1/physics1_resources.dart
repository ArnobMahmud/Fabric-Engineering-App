import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class Physics1Resources extends StatefulWidget {
  const Physics1Resources({super.key});

  @override
  State<Physics1Resources> createState() => _Physics1ResourcesState();
}

class _Physics1ResourcesState extends State<Physics1Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Physics I'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'phy1-1',
        ),
      ),
    );
  }
}
