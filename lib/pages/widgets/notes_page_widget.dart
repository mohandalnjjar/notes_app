import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/pages/widgets/custome_appbar.dart';
import 'package:notes_app/pages/widgets/notes_list_view.dart';

class NotesPageBody extends StatefulWidget {
  const NotesPageBody({super.key});

  @override
  State<NotesPageBody> createState() => _NotesPageBodyState();
}

class _NotesPageBodyState extends State<NotesPageBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
    super.initState();
  }

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
              child: NoteslistView(),
            ),
          ],
        ),
      ),
    );
  }
}
