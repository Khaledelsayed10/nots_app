import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_search_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
   final void Function()?onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
        Spacer(),
        CustomSearchIcons(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
