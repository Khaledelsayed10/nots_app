import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_search_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        Spacer(),
        CustomSearchIcons()
      ],
    );
  }
}
