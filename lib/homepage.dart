import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Homepage extends StatefulWidget{

// ignore: non_constant_identifier_names
  Homepage({super.key});

  @override

  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage>{
  final GlobalKey<ScaffoldState> _scaffoldkey =GlobalKey();
   late ScrollController scrollController ;

  @override
  // ignore: override_on_non_overriding_member
  void initState(){
    super.initState();
    scrollController =  ScrollController() ;
    scrollController.addListener((){
    // ignore: avoid_print
    print("${scrollController.offset}") ;
    });
  }
  @override
  void dispose(){
    scrollController.dispose();
    super.dispose();
  }
  
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: const Text("Scroll"),
      
      ),
      body: ListView(
        controller: scrollController,
        children: [
          MaterialButton(onPressed: (){
            scrollController.animateTo(9773, duration: const Duration(seconds: 10), curve: Curves.ease);
          }, child: const Text("Jumb To Bottom"),),
      ...List.generate(50,
       (index) => Container(
        alignment: Alignment.center,
        height: 200,

        color: index.isEven ? Colors.red: Colors.green,
        child: Text("$index", style: const TextStyle(fontSize: 25),),)
        ),
          MaterialButton(onPressed: (){
            scrollController.animateTo(0, duration: const Duration(seconds: 10), curve: Curves.ease);
          }, child: const Text("Jumb To Top"),),
        ],
      ),
   );     
  }
  

  }



  
