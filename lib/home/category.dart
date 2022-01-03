import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  // const MyCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Container(
          child: Column(children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red[400],
                child: ImageIcon(AssetImage('asset/icons/ic_men.png'), color : Colors.white),
              ),
            
        
            Text(
              "Men",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red[400]
              ),
            )

          ],
          ),
        ),
          Container(
          child: Column(children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal[600],
                child: ImageIcon(AssetImage('asset/icons/ic_woman.png'), color : Colors.white),
              ),
            
        
            Text(
              "Women",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.teal[600]
              ),
            )

          ],
          ),
        ),
        Container(
          child: Column(children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: Colors.yellow,
                child: ImageIcon(AssetImage('asset/icons/ic_kids.png'), color : Colors.white),
              ),
            
        
            Text(
              "Baby & Kids",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellow
              ),
            )

          ],
          ),
        ),

        Container(
          child: Column(children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green[300],
                child: ImageIcon(AssetImage('asset/icons/ic_decor.png'), color : Colors.white),
              ),
            
        
            Text(
              "Decor",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green[300]
              ),
            )

          ],
          ),
        ),

        Container(
          child: Column(children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue[900],
                child: ImageIcon(AssetImage('asset/icons/ic_bag.png'), color : Colors.white),
              ),
            
        
            Text(
              "Bags",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue[900]
              ),
            )

          ],
          ),
        )

  
    ],);
  }
}