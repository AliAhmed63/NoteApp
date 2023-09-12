import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.buttonName, this.onTap, this.loading = false});

  VoidCallback? onTap;
  String? buttonName;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Center(
            child: loading
                ? const SizedBox(
                    height: 23,
                    width: 23,
                    child: CircularProgressIndicator(
                      color: Colors.black45,
                    ),
                  )
                : Text(
                    '$buttonName',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
          ),
        ),
      ),
    );
  }
}
