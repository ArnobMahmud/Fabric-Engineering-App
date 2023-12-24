import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class TAMResources extends StatefulWidget {
  const TAMResources({super.key});

  @override
  State<TAMResources> createState() => _TAMResourcesState();
}

class _TAMResourcesState extends State<TAMResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Textile & Apparel Merchandizing (TAM)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: '',
        ),
      ),
    );
  }
}
