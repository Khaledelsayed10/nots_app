import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/notes_list_views.dart';

class NotesViewbody extends StatelessWidget {
  const NotesViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),   
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
