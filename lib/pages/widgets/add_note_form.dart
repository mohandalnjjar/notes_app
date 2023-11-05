
import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/CutomeTextField.dart';
import 'package:notes_app/pages/widgets/custome_buttom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;
  String? Titile, Subtitile;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidatemode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CutomeTextField(
            OnSaved: (value) {
              Titile = value;
            },
            hintText: 'Topic',
          ),
          const SizedBox(
            height: 20,
          ),
          CutomeTextField(
            OnSaved: (value) {
              value = Subtitile;
            },
            hintText: 'Content',
            MaxLines: 5,
          ),
          SizedBox(
            height: 30,
          ),
          CutomeButtom(
            OnTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidatemode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
