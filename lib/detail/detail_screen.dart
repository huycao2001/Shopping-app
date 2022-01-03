import 'package:flutter/material.dart';
import 'package:shop_app/detail/detai_tabbar.dart';
import 'package:shop_app/model/product.dart';
import 'package:badges/badges.dart';
import 'package:like_button/like_button.dart';
import './detail_picture.dart';
import './detail_item.dart';
import './optionBar.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({ Key? key }) : super(key: key);
  String image; 
  String name; 
  String price1; 
  String price2; 
  String des; 
  DetailScreen(this.image, this.name, this.price1, this.price2, this.des);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Detail Screen"),
      // ),
      body: Column( 
        children: [
          DetailPicture(image),
          DetailItem(name, price1, price2),
          DetailTabbar(des),
          OptionBar(),
          
        ],
      ),
    );
  }
}