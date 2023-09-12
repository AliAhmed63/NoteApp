import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/reading_notes_cubit.dart';
import 'CustomAppBar.dart';
import 'NotesListView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState(){
    BlocProvider.of<ReadingNotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: 'Notes', icon: Icons.search,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

