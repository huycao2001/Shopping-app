import 'package:flutter/material.dart';
import 'package:shop_app/detail/detail_screen.dart';

class ProductCard extends StatelessWidget {
  // const ProductCard({ Key? key }) : super(key: key);
  String image; 
  String name; 
  String price1; 
  String price2; 
  String des; 
  ProductCard(this.image, this.name, this.price1, this.price2, this.des);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(image,name,price1,price2,des)),
      );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 200,
              child: FittedBox(
                child: Image.asset(image),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height : 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(width:10),
                Container(
                  child: Text(
                    price2,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[400] ,decoration: TextDecoration.lineThrough),
                  ),
                ),
                SizedBox(width:5),
                Container(
                  child: Text(
                    price1,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange , fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


