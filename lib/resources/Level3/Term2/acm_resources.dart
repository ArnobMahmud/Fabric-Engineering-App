import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class ACMResources extends StatefulWidget {
  const ACMResources({super.key});

  @override
  State<ACMResources> createState() => _ACMResourcesState();
}

class _ACMResourcesState extends State<ACMResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Accounting & Cost Management',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'acm3-2',
        ),
      ),
    );
  }
}
