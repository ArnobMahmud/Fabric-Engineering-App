import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class TTResources extends StatefulWidget {
  const TTResources({super.key});

  @override
  State<TTResources> createState() => _TTResourcesState();
}

class _TTResourcesState extends State<TTResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Technical Textile (TT)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'tt4-2',
        ),
      ),
    );
  }
}
