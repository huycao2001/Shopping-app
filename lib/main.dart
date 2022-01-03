import 'package:flutter/material.dart';
import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.blue[50],
      ),
      home: MyHomePage('Home'),
    );
  }
}


