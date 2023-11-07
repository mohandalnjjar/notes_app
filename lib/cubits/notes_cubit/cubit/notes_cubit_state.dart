part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}

final class NotesLoading extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

final class NotesFalure extends NotesCubitState {
  final String error;

  NotesFalure(this.error);
}
