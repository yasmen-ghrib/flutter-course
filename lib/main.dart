import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:my_app/Customcard.dart';
import 'package:my_app/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override 
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:Homepage(),
  
            );
      
  }
}


