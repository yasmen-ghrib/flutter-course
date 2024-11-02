// ignore: file_names
import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget{
  // ignore: prefer_typing_uninitialized_variables
  final String name ;
  final String email ;
  final String date ;
  final String imagename ;
  const CustomListtile( {super.key, required this.name, required this.email, 
  required this.date, required this.imagename});

  @override
  Widget build(BuildContext context){
    return Card(
      child:Padding(padding: const EdgeInsets.all(10.0),
     
              child:Row(
                children: [
                Container(
                  height: 100,
                  width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: 
                Image.asset("images/$imagename",fit: BoxFit.cover,),)),
                Expanded(
               child: ListTile(
                title: Text("$name"),
                subtitle: Text("$email"),
                trailing: Text("$date"),),
                )  ],
               ), )
    );
  }
}