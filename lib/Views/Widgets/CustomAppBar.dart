import 'package:flutter/material.dart';
import 'package:noteapp/Views/Widgets/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(title ,style: const TextStyle(
            fontSize: 30,
          ),),
        ),
        Spacer(),
        CustomSearchIcon( icon: icon,),
      ],
    );
  }
}
