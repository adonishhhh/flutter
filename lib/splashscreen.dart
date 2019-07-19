import 'package:flutter/material.dart';

import 'dart:async';

import './productmanager.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreen();
  }
  
}

class _SplashScreen extends State<SplashScreen>{
String startingProduct;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 5,
    ), (){

      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductManager(startingProduct)));
      print("hello");
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.redAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  CircleAvatar(
                    child: Image.asset("assets/another.png"),
                    radius: 150.0,
                    backgroundColor: Colors.white,
                  ),
                  Padding(padding: EdgeInsets.only(top: 150.0)),
                  CircularProgressIndicator(
                    backgroundColor: Colors.redAccent,
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
  
}