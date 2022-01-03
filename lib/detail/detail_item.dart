import 'package:flutter/material.dart';
class DetailItem extends StatelessWidget {
  // const DetailItem({ Key? key }) : super(key: key);
  String name; 
  String price1; 
  String price2;
  DetailItem(this.name,this.price1,this.price2);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child : Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // width : double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.all(0),
                  child: Text(name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18), textAlign: TextAlign.end,)
                ), 
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), 
                        color: Colors.orange,
                      ),
                      // color: Colors.orange, 
                      child : Container(
                        padding: EdgeInsets.only(left :10,right : 10, top : 4, bottom : 4),
                        child: Row(
                          children: [
                            Text('3.0', style: TextStyle(color : Colors.white),),
                            IconTheme(
                            data: new IconThemeData(color: Colors.white), 
                            child: new Icon(Icons.star, size: 10),
                        ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left : 5),
                      child: Text('6 Reviewer', style : TextStyle(color: Colors.grey))
                      ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(flex : 5 ,child: SizedBox(width : 200)),
          Flexible(
            flex : 1 ,
            child : Column(
              children: [
                Text(price1, style: TextStyle(fontSize: 16,color: Colors.orange, fontWeight: FontWeight.bold),),
                Text(price2, style : TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey))
              ],
            )
          )
        ],
      )

    );
  }
}