import 'package:flutter/material.dart';
import 'NoteIteam.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // the dis between the app bar and the first not
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context,index)
      {
        return const Padding(
          //the dis betwen the note
          padding: EdgeInsets.only(bottom: 8.0),
          child: NoteItem(),
        );
      },),
    );
  }
}