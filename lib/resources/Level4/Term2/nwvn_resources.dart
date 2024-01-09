import 'package:flutter/material.dart';
import '../../../api/future_widget.dart';
import '../../../widget/custom_app_bar.dart';

class NwvnResources extends StatefulWidget {
  const NwvnResources({super.key});

  @override
  State<NwvnResources> createState() => _NwvnResourcesState();
}

class _NwvnResourcesState extends State<NwvnResources> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffe2dfd2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(
          title: 'Nonwoven (NWvn)',
        ),
      ),
      body: Center(
        child: FutureWidget(
          endpoint: 'nwvn4-2',
        ),
      ),
    );
  }
}
