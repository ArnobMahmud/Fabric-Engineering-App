import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class PSEResources extends StatefulWidget {
  const PSEResources({super.key});

  @override
  State<PSEResources> createState() => _PSEResourcesState();
}

class _PSEResourcesState extends State<PSEResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(title: 'Polymer Science & Engineering (PSE)'),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'pse1-2',
        ),
      ),
    );
  }
}
