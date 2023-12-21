import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class BCEResources extends StatefulWidget {
  const BCEResources({super.key});

  @override
  State<BCEResources> createState() => _BCEResourcesState();
}

class _BCEResourcesState extends State<BCEResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Business & Communicative English (BCE)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'bce1-1',
        ),
      ),
    );
  }
}
