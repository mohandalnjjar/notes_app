import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/CutomeTextField.dart';
import 'package:notes_app/pages/widgets/custome_appbar.dart';

class EditNotePageBody extends StatefulWidget {
  const EditNotePageBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotePageBody> createState() => _EditNotePageBodyState();
}

class _EditNotePageBodyState extends State<EditNotePageBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomeAppBar(
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            SpaceBetwen: 190,
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 40,
          ),
          CutomeTextField(
              onchange: (value) {
                title = value;
              },
              hintText: widget.note.title),
          const SizedBox(
            height: 30,
          ),
          CutomeTextField(
            onchange: (value) {
              content = value;
            },
            hintText: widget.note.subtitle,
            MaxLines: 9,
          ),
        ],
      ),
    );
  }
}
