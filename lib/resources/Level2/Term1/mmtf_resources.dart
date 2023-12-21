import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class MMTFResources extends StatefulWidget {
  const MMTFResources({super.key});

  @override
  State<MMTFResources> createState() => _MMTFResourcesState();
}

class _MMTFResourcesState extends State<MMTFResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Man Made Textile Fiber (MMTF)',
        ),
      ),
     body: Center(
        child: FutureWidget(
          endpoint: 'mmtf2-1',
        ),
      ),);
  }
}
