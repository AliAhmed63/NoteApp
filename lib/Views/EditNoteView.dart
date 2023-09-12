import 'package:flutter/material.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/Views/Widgets/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}
