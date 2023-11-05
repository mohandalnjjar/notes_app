import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note_Cubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'package:notes_app/pages/home_page.dart';
import 'package:notes_app/pages/smiple_observer.dart';
import 'package:notes_app/pages/widgets/constance.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Bloc.observer = SimpleObserver();
  Hive.registerAdapter(NoteModelAdapter());
  runApp(
    const NotesApp(),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: HomePage(),
      ),
    );
  }
}
