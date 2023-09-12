import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.hintText,  this.maxLines=1, this.onSaved, this.onChanged});

  final String? hintText;
  final int maxLines;
  final void Function (String?)? onSaved;
  final  Function (String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value)
      {
        if(value?.isEmpty  ?? true)
        {
          return'Field is empty';
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        focusColor: kPrimaryColor,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kPrimaryColor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
