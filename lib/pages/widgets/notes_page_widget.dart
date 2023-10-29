import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/Custome_NoteCard.dart';
import 'package:notes_app/pages/widgets/custome_appbar.dart';

class NotesPageBody extends StatelessWidget {
  const NotesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomeAppBar(),
            Expanded(child: CustomeNotesItem()),
          ],
        ),
      ),
    );
  }
}

class CustomeNotesItem extends StatelessWidget {
  const CustomeNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const NoteItem(),
          );
        });
  }
}
