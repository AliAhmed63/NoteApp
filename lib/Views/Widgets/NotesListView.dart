import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/add_note_cubit.dart';
import 'package:noteapp/cubit/reading_notes_cubit.dart';
import '../../Models/note_model.dart';
import 'NoteIteam.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadingNotesCubit, ReadingNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<ReadingNotesCubit>(context).notes !;
        return Padding(
          // the dis between the app bar and the first not
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                //the dis betwen the note
                padding: const EdgeInsets.only(bottom: 8.0),
                child: NoteItem(
                  note: notes[index],
                ),
              );
            },),
        );
      },
    );
  }
}