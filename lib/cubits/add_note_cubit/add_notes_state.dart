part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoding extends AddNotesState {}

class AddNotesSaccess extends AddNotesState {}

class AddNotesFailure extends AddNotesState {
  final String errorMessage;

  AddNotesFailure(this.errorMessage);
}
