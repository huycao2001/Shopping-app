import 'package:flutter/material.dart';

class OptionBar extends StatelessWidget {
  // const OptionBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Flexible(
              flex :1,
              child: Container(
                padding: EdgeInsets.all(10),
                //color: Colors.white,
                width: double.infinity,
                height : 49,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)
                    ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center
                ),
              ),
            ),

            // 2th Flexible box
            Flexible(
              flex :1,
              child: Container(
                padding: EdgeInsets.all(10),
                //color: Colors.orange[300],
                width: double.infinity,
                height: 49,
                child: Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)
                    ),
                      color: Colors.orange[300],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                ),
              ),
            )
          ],);
  }
}