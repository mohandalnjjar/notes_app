import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_Cubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
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
  String? title, Subtitle;
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
              title = value;
            },
            hintText: 'Topic',
          ),
          const SizedBox(
            height: 20,
          ),
          CutomeTextField(
            OnSaved: (value) {
              Subtitle = value;
            },
            hintText: 'Content',
            MaxLines: 5,
          ),
          SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CutomeButtom(
                isloading: state is AddNoteLoading ? true : false,
                OnTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var notemodel = NoteModel(
                      title: title!,
                      subtitle: Subtitle!,
                      data: DateTime.now().toString(),
                      color: Colors.blueAccent.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
                  } else {
                    autovalidatemode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
