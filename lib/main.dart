import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //heightFactor: 4,
        //widthFactor: 2,
        child: Container(
          //color: Colors.blue,
          padding: EdgeInsets.all(8),
          //constraints: BoxConstraints.expand(),
          alignment: Alignment.center,
          width: 200,
          height: 200,
          //transform: Matrix4.rotationZ(0.5),
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              width: 3,
              color: Colors.purple,
              style: BorderStyle.solid,
            ),
            //borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4.0,
                spreadRadius: 2.0,
                //offset: Offset.
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue,
                Colors.green,
                Colors.yellow,
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Text(
            'Flutter Essenstials',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
