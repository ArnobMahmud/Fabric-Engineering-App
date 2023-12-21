import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class TPResources extends StatefulWidget {
  const TPResources({super.key});

  @override
  State<TPResources> createState() => _TPResourcesState();
}

class _TPResourcesState extends State<TPResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Textile Physics (TP)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'tp2-2',
        ),
      ),
    );
  }
}
