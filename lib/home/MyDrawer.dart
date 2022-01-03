import 'package:flutter/material.dart';
import './card.dart';
class MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 0,
        child : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              width : double.infinity,
              height : 100,
              child : CircleAvatar(
                radius: (52),
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(50),
                  child: Image.asset("asset/ic_user.png"),
                )
              )
            ),

            Container(
              color: Colors.white,
              width : double.infinity,
              height : 50,
              child : Text("Cao Ba Huy", textAlign: TextAlign.center, style : TextStyle(fontWeight: FontWeight.bold))
            ),
            
            Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.grey[300],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            //flex :1, 
                            child: DrawerCart("My Order", "08"),
                          ),
                          Flexible(
                            //flex: 1,
                            child: DrawerCart("Wishlist","07"),
                          ),
                        ],
                      ),
                    ),

            ListTile(  
              title: new Text("Men", style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/ic_men.png')),  
            ), 

            ListTile(  
              title: new Text("Women", style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/ic_woman.png')),  
            ), 

            ListTile(  
              title: new Text("Baby & Kids" , style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/ic_kids.png')),  
            ), 

            ListTile(  
              title: new Text("Bags" , style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/ic_bag.png')),  
            ), 

            ListTile(  
              title: new Text("Decor", style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/ic_decor.png')),  
            ), 

            ListTile(  
              title: new Text("Sport", style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/ic_sports.png')),  
            ), 
            SizedBox(height: 50,),
            Divider(color: Colors.grey,), 
            ListTile(  
              title: new Text("Account", style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/user.png')),
          
            ), 

            ListTile(  
              title: new Text("Settings", style: TextStyle(fontWeight: FontWeight.bold),),  
              leading: new ImageIcon(AssetImage('asset/icons/settings.png')),  
            ), 
        ],)
      );
  }
}

