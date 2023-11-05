import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_Cubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/pages/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteFaliur) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('error happend'),
                ),
              );
            }
            if (state is AddNoteSuccess) {
              return Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
