import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Views/Widgets/CustomAppBar.dart';
import 'package:noteapp/Views/Widgets/CustomeTwxtField.dart';
import 'package:noteapp/cubit/reading_notes_cubit.dart';
import '../../Models/note_model.dart';
import 'EditNoteColorList.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.done,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ReadingNotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            maxLines: 1,
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            maxLines: 5,
            hintText: widget.note.subTitle,
          ),
          const SizedBox(
            height: 20,
          ),
          EditNoteColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}


