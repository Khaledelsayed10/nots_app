import 'package:flutter/material.dart';

class CustomSearchIcons extends StatelessWidget {
  const CustomSearchIcons({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()?onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.5),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
