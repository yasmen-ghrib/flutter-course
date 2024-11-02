import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Homepage extends StatelessWidget{
// ignore: non_constant_identifier_names
GlobalKey<ScaffoldState> Scaffoldkey = GlobalKey();

  Homepage({super.key});
  List catageries = [
    {
      "iconname": Icons.laptop ,
      "title" :"Laptop"
    },
     {
      "iconname": Icons.mobile_friendly,
      "title" :"Mobile"
    },
     {
      "iconname": Icons.car_repair ,
      "title" :"Cars"
    },
     {
      "iconname": Icons.card_giftcard,
      "title" :"Gifts"
    },
     {
      "iconname": Icons.bike_scooter,
      "title" :"Bike"
    },
  ] ;
  List items = [
    
     {"image":"images/durzi.jpg" ,
     "title":"Headphone w" ,
     "subtitle":"Description Fine Good",
     "price":"350\$"},

      {"image":"images/durzi.jpg" ,
     "title":"Watch" ,
     "subtitle":"Watch Casio",
     "price":"250\$"},
    
   
    
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
    body: Container(
    padding: const EdgeInsets.all(20),
    child: ListView(children: [
    Row(children: [
      Expanded(child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: "search",
          border: InputBorder.none,
          fillColor:Colors.grey[500],
          filled: true
          ),
      
      )),
      const Padding(padding: EdgeInsets.only(left: 10),
       child: Icon(Icons.menu ,size: 40),
       )
    ],),
    Container(height: 30),
     const Text("catageries",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
     Container(height: 20),
     Container(
      height: 100,
      child: ListView.builder(
        itemCount: catageries.length,
    scrollDirection: Axis.horizontal,
   
     itemBuilder: (context , i){
       return Container(
          margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
             margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(color: Colors.grey[500],
            borderRadius: BorderRadius.circular(100)
            ),
            child: Icon(catageries[i]['iconname'],size: 40),
       padding: const EdgeInsets.all(15),),
       Text(catageries[i]['title'], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800])
         )
        
     ]),);}),),
     Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: 
       const Text("Best selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
      GridView.builder(
        itemCount: items.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisExtent: 200),
        itemBuilder: (context, i) {

        
       return Card(child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: 200,
            color: Colors.grey[400],
          child: Image.asset(items[i]['image'],height: 100,fit: BoxFit.fill,),),
           Text(items[i]['title'] ,
          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          Container(height: 2),
           Text(items[i]['subtitle'],
          style: const TextStyle(fontSize: 14,color: Colors.grey)),
          Container(height: 2),
               Text(items[i]['price'] ,
               style: const TextStyle(fontSize: 14,color: Colors.orange,fontWeight: FontWeight.bold)),
        ],),);}
      
      ),
    ]),
    ),
   );     
  }
}


