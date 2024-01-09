import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? ontap;
  const DrawerTile({super.key, this.title, required this.icon, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon!,
        color: const Color.fromARGB(255, 14, 53, 86),
        size: 30,
      ),
      title: Text(
        title!,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: ontap,
    );
  }
}
