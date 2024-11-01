import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/notes_list_views.dart';

class NotesViewbody extends StatefulWidget {
  const NotesViewbody({super.key});

  @override
  State<NotesViewbody> createState() => _NotesViewbodyState();
}

class _NotesViewbodyState extends State<NotesViewbody> {
  @override
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
   @override
  
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),   
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
