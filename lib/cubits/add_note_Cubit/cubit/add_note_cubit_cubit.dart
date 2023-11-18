import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/constance.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());
  Color color = const Color(0xffD9E76C);

  addnote(NoteModel note) async {
    note.color = color.value;
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
        AddNoteFaliur(
          e.toString(),
        ),
      );
    }
  }
}
