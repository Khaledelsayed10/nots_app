import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLoding());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
     
      await noteBox.add(note);
       emit(AddNotesSaccess());
    } catch (e) {
     emit(AddNotesFailure(e.toString())); 
    }
  }
}
