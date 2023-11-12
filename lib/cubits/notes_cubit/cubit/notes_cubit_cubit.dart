import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/constance.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var NotesBox = Hive.box<NoteModel>(kNotesBox);
    notes = NotesBox.values.toList();
    emit(
      NotesSuccess(),
    );
  }
}
