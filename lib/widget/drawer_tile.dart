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
        color: Theme.of(context).colorScheme.tertiary,
        size: 30,
      ),
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).colorScheme.inversePrimary
        ),
      ),
      onTap: ontap,
    );
  }
}
