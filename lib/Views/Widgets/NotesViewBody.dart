import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'NotesListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
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

