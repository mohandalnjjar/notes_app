import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custome_appbar.dart';

class EditNotePageBody extends StatelessWidget {
  const EditNotePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        children: const [
          SizedBox(
            height: 35,
          ),
          CustomeAppBar(
            SpaceBetwen: 190,
            title: 'Edit Note',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
