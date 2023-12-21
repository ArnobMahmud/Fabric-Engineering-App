import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class NTFResources extends StatefulWidget {
  const NTFResources({super.key});

  @override
  State<NTFResources> createState() => _NTFResourcesState();
}

class _NTFResourcesState extends State<NTFResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Natural Textile Fiber (NTF)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'ntf1-1',
        ),
      ),);
  }
}
