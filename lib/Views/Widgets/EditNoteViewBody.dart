import 'package:flutter/material.dart';
import 'package:noteapp/Views/Widgets/CustomAppBar.dart';
import 'package:noteapp/Views/Widgets/CustomeTwxtField.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: 'Edit', icon: Icons.done,),
          SizedBox(
            height: 40,
          ),
          CustomTextField(maxLines: 1,hintText: 'Title',),
          SizedBox(
            height: 16,
          ),
          CustomTextField(maxLines: 5,hintText: 'Content',),
        ],
      ),
    );
  }
}
