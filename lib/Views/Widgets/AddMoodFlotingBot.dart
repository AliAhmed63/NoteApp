import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/add_note_cubit.dart';
import '../../cubit/reading_notes_cubit.dart';
import 'add_note_form.dart';

class AddMood extends StatelessWidget {
  const AddMood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<ReadingNotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child:  Padding(
              padding: EdgeInsets.only(right: 8.0,left: 8,top: 8,bottom : MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
