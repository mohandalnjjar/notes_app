import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/widgets/ColorsListView.dart';

import 'constance.dart';

class EditNoteColorsList extends StatefulWidget {
  EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentEndex;
  @override
  void initState() {
    currentEndex = KColorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27 * 2,
      child: ListView.builder(
        itemCount: KColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                currentEndex = index;
                widget.note.color = KColorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: KColorsList[index],
                isActive: currentEndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
