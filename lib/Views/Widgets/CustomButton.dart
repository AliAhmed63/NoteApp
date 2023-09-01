import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.ButtonName,this.ontap});
  VoidCallback? ontap;
  String? ButtonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Center(
            child: Text(
              '$ButtonName',
              style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}