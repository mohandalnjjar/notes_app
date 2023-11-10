import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.notes,
  });
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNotePage();
          }),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: Color(notes.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  notes.subtitle,
                  style: TextStyle(
                      fontSize: 19, color: Colors.black.withOpacity(.6)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 15),
              child: Text(
                notes.data,
                style: TextStyle(
                  color: Colors.black.withOpacity(.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
