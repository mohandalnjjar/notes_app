import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custome_appbar.dart';
import 'package:notes_app/pages/widgets/notes_list_view.dart';

class NotesPageBody extends StatelessWidget {
  const NotesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: Column(
          children: const [
            SizedBox(
              height: 35,
            ),
            CustomeAppBar(
              icon: Icons.search,
              title: 'Notes',
              SpaceBetwen: 240,
            ),
            Expanded(
              child: CustomeNotesItem(),
            ),
          ],
        ),
      ),
    );
  }
}
