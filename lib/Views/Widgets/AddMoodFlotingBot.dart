import 'package:flutter/material.dart';
import 'package:noteapp/Views/Widgets/CustomeTwxtField.dart';

import 'CustomButton.dart';

class AddMood extends StatelessWidget {
  const AddMood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children:
          [
            Padding(
              padding: const EdgeInsets.only(top: 28.0,left: 16,right: 16,bottom: 12),
              child: CustomTextField(hintText: 'Title', maxLines: 1,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 16,right: 16,bottom: 12),
              child: CustomTextField(hintText: 'Content',maxLines: 5,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(ButtonName: 'Add'),
            ),
            SizedBox(height: 12,)
          ],

        ),
      ),
    );
  }
}