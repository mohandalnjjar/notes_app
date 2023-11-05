import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/constance.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addnote(NoteModel note) async {
    emit(
      AddNoteLoading(),
    );
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      await NotesBox.add(note);
      emit(
        AddNoteSuccess(),
      );
    } catch (e) {
      emit(
        AddNoteFaliur(e.toString(),),
      );
    }
  }
}
