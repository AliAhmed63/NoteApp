import 'package:flutter/material.dart';
import 'Widgets/AddMoodFlotingBot.dart';
import 'Widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
              context: context,
              builder: (context) {
                return const AddMood();
              });
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
