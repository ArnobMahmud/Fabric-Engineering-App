import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class WPPResources extends StatefulWidget {
  const WPPResources({super.key});

  @override
  State<WPPResources> createState() => _WPPResourcesState();
}

class _WPPResourcesState extends State<WPPResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Weaving Preparatory Process'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'wpp2-1',
        ),
      ),
    );
  }
}
