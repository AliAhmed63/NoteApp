import 'package:flutter/material.dart';
import 'package:noteapp/Views/EditNoteView.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return const EditNoteView();
        }),);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0,bottom: 24,right:10 ,left:10 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'FlutterTitle',
                  style: TextStyle(color: Colors.black, fontSize: 29),
                ),
                subtitle:const Padding(
                  padding:  EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Text(
                    'here is Subtitle that is the good bart',
                    style: TextStyle(color: Colors.black45, fontSize: 19),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 35,
                    color: Colors.black45,
                  ),
                ),
              ),
              const Padding(
                // the dis between the text
                padding:  EdgeInsets.only(right: 25,),
                child:  Text(
                  '29-2-1100',
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
