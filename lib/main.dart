import 'package:flutter/material.dart';

import 'FirstScreen.dart';

void main()=>runApp(myApp());

class myApp extends StatefulWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI",
      theme: ThemeData(
        primarySwatch:Colors.blueGrey,
      ),
      home: FirstScreen(),
    );
  }
}