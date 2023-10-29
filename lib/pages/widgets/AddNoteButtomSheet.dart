import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/CutomeTextField.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children:  [
          SizedBox(
            height: 40,
          ),
          CutomeTextField(
            hintText: 'Topic',
          ),
          SizedBox(
            height: 40,
          ),
          CutomeTextField(
            hintText: 'Content',
            MaxLines: 8,
          ),

          
        ],
      ),
    );
  }
}
