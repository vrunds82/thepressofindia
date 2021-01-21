import 'package:flutter/material.dart';

import 'Drawer/Drawer_Category.dart';
import 'HomePage/home.dart';
import 'Splash/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'The Press Of India',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: splash(),
      routes: {

        'home':(context)=>Homepage(),
      'drawer_category':(context)=>News_category_drawer(),
      },
    );
  }
}


