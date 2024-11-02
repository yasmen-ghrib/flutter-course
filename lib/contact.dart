
import 'package:flutter/material.dart';
import 'package:my_app/aboutus.dart';
import 'package:my_app/homepage.dart';
class Contact extends StatelessWidget{
  const Contact ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Contact"),),
      body: ListView(children: [
        const Center(
          child: 
        Text("Contact page",
        style: TextStyle(fontSize: 30),textAlign: TextAlign.center,)),
       Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage() )) ;
        } ,child: const Text("Go To Page Homepage"),)),
              Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs())) ;
        } ,child: const Text("Go To Page Aboutus"),),),
              Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage())) ;
        } ,child: const Text("Go To page Home"),),),
              Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).pop() ;
        } ,child: const Text("back"),),),
              Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context)
          .pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>  Homepage()),
          (route) => false);
        } ,child: const Text("Go To Home(pushAndRemoveUntil)"),),),
      ],),
    );
  }
}


