import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/CutomeTextField.dart';
import 'package:notes_app/pages/widgets/custome_buttom.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CutomeTextField(
              hintText: 'Topic',
            ),
            SizedBox(
              height: 20,
            ),
            CutomeTextField(
              hintText: 'Content',
              MaxLines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            CutomeButtom(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

