import 'package:flutter/material.dart';

// import '../../../constants.dart';

class DrawerCart extends StatelessWidget {
  // const DrawerCart({
  //   Key? key,
  //   this.title,
  //   this.text,
  // }) : super(key: key);

  final String title, text;
  DrawerCart(this.title,this.text);
  @override
  Widget build(BuildContext context) {
    // Why we use padding : https://api.flutter.dev/flutter/widgets/Padding-class.html
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text, // null check
            style: TextStyle(color: Colors.orange),
          ),
          SizedBox(height: 10,),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}