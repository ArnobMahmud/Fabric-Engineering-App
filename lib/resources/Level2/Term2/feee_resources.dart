import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class FEEEResources extends StatefulWidget {
  const FEEEResources({super.key});

  @override
  State<FEEEResources> createState() => _FEEEResourcesState();
}

class _FEEEResourcesState extends State<FEEEResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
            title:
                'Fundamentals of Electrical & Electronics Engineering (FEEE)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'feee2-2',
        ),
      ),
    );
  }
}
