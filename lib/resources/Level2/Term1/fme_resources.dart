import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class FMEResources extends StatefulWidget {
  const FMEResources({super.key});

  @override
  State<FMEResources> createState() => _FMEResourcesState();
}

class _FMEResourcesState extends State<FMEResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffcfbaba),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child:
            CustomAppBar(title: 'Fundamentals of Mechanical Engineering (FME)'),
      ),
       body: Center(
        child: FutureWidget(
          endpoint: 'fme2-1',
        ),
      ),
    );
  }
}
