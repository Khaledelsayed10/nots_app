import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/colors_list_view.dart';

class EdiitNoteColorsListView extends StatefulWidget {
  const EdiitNoteColorsListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EdiitNoteColorsListView> createState() => _EdiitNoteColorsListViewState();
}

class _EdiitNoteColorsListViewState extends State<EdiitNoteColorsListView> {
 late int currnetIndex;
  @override
  void initState() {
    currnetIndex =kColor.indexOf(Color(widget.note.color));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  currnetIndex = index;
                  widget.note.color=kColor[index].value;
                 
                  
                  setState(() {});
                },
                child: ColorItem(
                  color: kColor[index],
                  isActive: currnetIndex == index,
                )),
          );
        },
      ),
    );
  }
}
