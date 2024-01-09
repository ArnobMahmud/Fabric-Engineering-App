import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class SocResources extends StatefulWidget {
  const SocResources({super.key});

  @override
  State<SocResources> createState() => _SocResourcesState();
}

class _SocResourcesState extends State<SocResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Sociology',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'soc4-1',
        ),
      ),
    );
  }
}
