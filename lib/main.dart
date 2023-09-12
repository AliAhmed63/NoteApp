import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubit/reading_notes_cubit.dart';
import 'package:noteapp/simple_bloc_observer.dart';
import 'Views/NotesView.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserve();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadingNotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
        home: const NotesView(),
      ),
    );
  }
}
