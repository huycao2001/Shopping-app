import 'package:flutter/material.dart';
import 'package:shop_app/model/product.dart';
import 'package:badges/badges.dart';
import 'package:like_button/like_button.dart';


class DetailPicture extends StatelessWidget {
  // const DetailPicture({ Key? key }) : super(key: key);
  String image; 
  DetailPicture(this.image);

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Container(
                width : double.infinity,
                height : 230, 
                child : FittedBox(
                  child: Image.asset(image),
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                children: [
                  Flexible(flex :1 ,child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_outlined), color: Colors.black,)),
                  Flexible( flex : 7, child: SizedBox(width: double.infinity)),
                  Flexible(flex : 1,child: LikeButton()),
                  Flexible(
                    child : Badge(
                              position: BadgePosition.topEnd(top: 1, end: 1),
                              badgeContent: Text(
                                '3',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                              child: IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {})
                 )
                  ),
                ],
              )
            ],
          );
  }
}