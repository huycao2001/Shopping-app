import 'package:flutter/material.dart';
// import 'MyDrawer.dart';

import 'package:carousel_slider/carousel_slider.dart';
class ImageSlider extends StatelessWidget {
  // const ImageSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return CarouselSlider(   // Ref : https://www.geeksforgeeks.org/flutter-carousel-slider/
              items: [
                //1st Image of Slider
                Container(
                    width : double.infinity,
                    height : 480,
                  //margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                    image: AssetImage('asset/products/banners/b1.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
                ),
                
                //2nd Image of Slider
                Container(
                  width : double.infinity, 
                  height : 480,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                    image: AssetImage('asset/products/banners/b2.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  width : double.infinity, 
                  height : 480,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                    image: AssetImage('asset/products/banners/b3.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  width : double.infinity, 
                  height : 480,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                    image: AssetImage('asset/products/banners/b4.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  width : double.infinity, 
                  height : 480,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                    image: AssetImage('asset/products/banners/b5.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
                ),

                //6th Image of Slider
                Container(
                  width : double.infinity, 
                  height : 480,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                    image: AssetImage('asset/products/banners/b6.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
                ),
            ],
      
			
			//Slider Container properties
			options: CarouselOptions(
				height: 200,
				enlargeCenterPage: false,
				autoPlay: true,
				// aspectRatio: 1,
				autoPlayCurve: Curves.fastOutSlowIn,
				enableInfiniteScroll: true,
				autoPlayAnimationDuration: Duration(seconds: 5),
				viewportFraction: 1,
			),
		);
  }
}