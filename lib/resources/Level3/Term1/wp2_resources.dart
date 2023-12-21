import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class WP2Resources extends StatefulWidget {
  const WP2Resources({super.key});

  @override
  State<WP2Resources> createState() => _WP2ResourcesState();
}

class _WP2ResourcesState extends State<WP2Resources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Wet Processing (WP) II'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'wp3-1',
        ),
      ),
    );
  }
}
