part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteLoading extends AddNoteCubitState {}

final class AddNoteSuccess extends AddNoteCubitState {}

final class AddNoteFaliur extends AddNoteCubitState {
 final String error;

  AddNoteFaliur(this.error);
}
