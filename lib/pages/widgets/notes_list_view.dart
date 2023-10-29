
import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/Custome_NoteCard.dart';

class CustomeNotesItem extends StatelessWidget {
  const CustomeNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const NoteItem(),
          );
        });
  }
}
