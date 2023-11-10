import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/Custome_NoteCard.dart';

class NoteslistView extends StatelessWidget {
  const NoteslistView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> noteslist =
            BlocProvider.of<NotesCubitCubit>(context).notes ?? [];
        return ListView.builder(
            itemCount: noteslist.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child:  NoteItem(notes: noteslist[index],),
              );
            });
      },
    );
  }
}
