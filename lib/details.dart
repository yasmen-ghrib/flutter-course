// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
class ItemDetails extends StatelessWidget{
  // ignore: prefer_typing_uninitialized_variables
  final dataitems;
   const ItemDetails ({super.key, required this.dataitems});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
      iconSize: 40,
      selectedItemColor: Colors.orange,
      items:
     const [BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "*"),
     BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "*"),
     BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "*"),
     ]),
     endDrawer: const Drawer(),
      appBar: AppBar(
      
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.shop_outlined , color: Colors.black),
        
         Text(" Ecommerce ",style: TextStyle(color: Colors.black)),
         Text("yasmen",style: TextStyle(color: Colors.orange)),
        ]),
        iconTheme: const IconThemeData(
          color: Colors.grey
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
    body: ListView(
      children: [
        Image.asset(dataitems['image']),
        Container(child: Text(dataitems['title'],
         textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 20),
         )),
           Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(dataitems['subtitle'], 
           textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[600]),)),
             Container(
            margin: const EdgeInsets.only(top: 10,bottom: 20),
            child: Text(dataitems['price'], 
           textAlign: TextAlign.center,
           style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("Color:" ,style: TextStyle(color: Colors.grey),),
            const SizedBox(width: 10),
            Container(height: 20,width: 20,decoration: BoxDecoration(
              color:Colors.grey,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.orange)
               ),),
               const Text(" Grey"),
                 const SizedBox(width: 20),
            Container(height: 20,width: 20,decoration: BoxDecoration(
              color:Colors.grey,
              borderRadius: BorderRadius.circular(30),),),
                const Text(" Black"),
                 const SizedBox(width: 10),
            Container(height: 20,width: 20,decoration: BoxDecoration(
              color:Colors.black,
              borderRadius: BorderRadius.circular(30),),),
            
           ],),
           Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text("size:   34 35 40 42" , 
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),),),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40 , vertical: 20),
              child: 
            MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: (){},child: Text("Add To Card"),)),
      ],
    ),
    );
    
  }
}


