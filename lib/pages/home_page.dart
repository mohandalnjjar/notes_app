import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/notes_page_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesPageBody(),
    );
  }
}
