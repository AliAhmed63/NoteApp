import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({ this.hintText,  this.onChange, required this.maxLines});

  final String? hintText;
  Function(String)? onChange;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      onChanged: onChange,
      decoration: InputDecoration(
        focusColor: kprimaryColor,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kprimaryColor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
