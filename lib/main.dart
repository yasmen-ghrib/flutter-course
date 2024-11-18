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
      routes: {
          "home": (context) => Homepage(),
        "pageone": (context) => PageOne(),
          "pagetwo": (context) => PageTwo(),
      },
      // list:ListGenerate(),
            );
      
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: const Text("Page One")),
    body: const Center(child: Text("This is Page One")),
  );
}
}

class PageTwo extends StatelessWidget{
  const PageTwo({super.key});



  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: const Text("Page Two")),
    body: const Center(child: Text("This is Page Two")),
  );
}
}