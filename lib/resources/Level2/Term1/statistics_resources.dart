import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class STATResources extends StatefulWidget {
  const STATResources({super.key});

  @override
  State<STATResources> createState() => _STATResourcesState();
}

class _STATResourcesState extends State<STATResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Statistics'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'stat2-1',
        ),
      ),
    );
  }
}
