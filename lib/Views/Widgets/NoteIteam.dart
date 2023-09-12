import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Models/note_model.dart';
import 'package:noteapp/Views/EditNoteView.dart';
import 'package:noteapp/cubit/reading_notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return  EditNoteView(note: note,);
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24.0, bottom: 24, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 29),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(color: Colors.black45, fontSize: 19),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<ReadingNotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 35,
                    color: Colors.black45,
                  ),
                ),
              ),
              Padding(
                // the dis between the text
                padding: const EdgeInsets.only(
                  right: 25,
                ),
                child: Text(
                  note.date,
                  style: const TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
