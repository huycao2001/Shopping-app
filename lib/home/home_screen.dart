import 'package:flutter/material.dart';
import 'package:shop_app/home/category.dart';
import 'MyDrawer.dart';
import './imageSlider.dart';
import 'section_title.dart';
import 'product_list.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);
  MyHomePage(this.title);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  int _selectedIndex = 0;
  // For navigation bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
      ),
      drawer: MyDrawer(), // import from MyDrawer.dart
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlider(), 
            SizedBox(height:40),
            MyCategory(),
            SizedBox(height:40),
            SectionTitle('Newest Arrivals'),
            ProductList(),
            SectionTitle('Feature Products '),
            ProductList(),
          ],
        ),
      ),

      bottomNavigationBar: Container(
          width: double.infinity,
          // height: 44,
          decoration: BoxDecoration(
            
            image: DecorationImage(image: AssetImage('asset/bg_bottom_bar.png'),fit: BoxFit.fitHeight),
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), title: Text('title')),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), title: Text('title')),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), title: Text('title')),
              BottomNavigationBarItem(icon: Icon(Icons.person_outlined), title: Text('title')),
            ],
            selectedItemColor: Colors.amber[800],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,

          ),
        ),
      // bottomNavigationBar : BottomNavigationBar(
      //   unselectedItemColor: Colors.grey,
      //   // selectedIconTheme: IconThemeData(color: Colors.black),
      //   items: const <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(icon: Icon(Icons.home ), title: Text('')),
      //         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart ) , title: Text('')),
      //         BottomNavigationBarItem(icon: Icon(Icons.favorite ) , title: Text('')),
      //         BottomNavigationBarItem(icon: Icon(Icons.person ) , title: Text('')),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      //   // selectedItemColor: Colors.black,
      // ),
    );
  }
}