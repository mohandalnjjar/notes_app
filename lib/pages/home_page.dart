import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/notes_page_widget.dart';

import 'widgets/AddNoteButtomSheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesPageBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
