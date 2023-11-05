import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:notes_app/pages/smiple_observer.dart';
import 'package:notes_app/pages/widgets/constance.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  Bloc.observer = SimpleObserver();

  Hive.registerAdapter<NoteModel>(
    NoteModelAdapter(),
  );
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = SimpleObserver();

  runApp(
    const NotesApp(),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
    );
  }
}
