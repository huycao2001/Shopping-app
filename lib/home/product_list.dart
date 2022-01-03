import 'package:flutter/material.dart';
import 'package:shop_app/model/product.dart';
import './product_card.dart';

class ProductList extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // ProductCard('asset/products/shoes.jpeg', 'dress', '15', '16'),
          // ProductCard('asset/products/watch_1.jpg', 'dress', '15', '16'),
          // ProductCard('asset/products/watch_2.jpeg', 'dress', '15', '16'),
          // ProductCard('asset/products/spects.jpg', 'dress', '15', '16'),
          ...products.map((product){
            return ProductCard(product.image, product.name, product.price1, product.price2, product.des);
          }).toList(),
        ],
      ),
    );
  }
}