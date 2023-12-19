import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class FMktResources extends StatefulWidget {
  const FMktResources({super.key});

  @override
  State<FMktResources> createState() => _FMktResourcesState();
}

class _FMktResourcesState extends State<FMktResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Fundamentals of Marketing (FMkt)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'fmkt2-2',
        ),
      ),
    );
  }
}
