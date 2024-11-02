import 'package:flutter/material.dart';
import 'package:my_app/contact.dart';
import 'package:my_app/homepage.dart';
class AboutUs extends StatelessWidget{
  const AboutUs ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("About"),),
      body: ListView(children: [
        const Center(
          child: 
        Text("About us page",
        style: TextStyle(fontSize: 30),textAlign: TextAlign.center,)),
       Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage() )) ;
        } ,child: const Text("Go To Page Homepage"),),),
        Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contact())) ;
        } ,child: const Text("Go To Page Contact"),),),
          Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage())) ;
        } ,child: const Text("Go To Page Home"),),),
           Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: 
       MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: (){
        Navigator.of(context).pop();
        } ,child: const Text("Back"),),),
      ],
      
     ),
      );
    
  }
}
