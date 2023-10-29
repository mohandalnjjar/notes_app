import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/editNotePageBody.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotePageBody(),
    );
  }
}
