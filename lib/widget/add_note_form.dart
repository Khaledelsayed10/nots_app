import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/custom_button.dart';
import 'package:note_app/widget/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  String? title, subTitle;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Titel',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLies: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isLoding: state is AddNotesLoding ?true:false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate=DateTime.now();
                    var formatedCurrentDate=
                    DateFormat('dd_mm_yyyy').format(currentDate);

                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date:formatedCurrentDate,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
