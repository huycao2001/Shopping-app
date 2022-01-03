import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  // const SectionTitle({ Key? key }) : super(key: key);
  String title = 'clone'; 
  SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex : 5,
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19)),
          ),
        ),
        Flexible(
          flex : 2,
          child: Container(
            width: double.infinity,
          ),
        ),
        Flexible(
          flex : 1,
          
          child: Container(
            // padding: EdgeInsets.all(30),
            child: Text('View all', style: TextStyle(color: Colors.grey, fontSize: 12),textAlign: TextAlign.center,),
          ),
        )
      ],
    );
  }
}