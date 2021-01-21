import 'dart:async';

import 'package:flutter/material.dart';


class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {


  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
    navigationPage();
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('home');
  }

  void initState() {

    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body: Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Center(child: Image.asset('assets/images/logo.png',
          width: MediaQuery.of(context).size.width*0.4,)),
      ),
    );
  }
}
