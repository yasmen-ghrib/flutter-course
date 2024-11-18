import 'package:flutter/material.dart';


 abstract class Pageone extends StatelessWidget{

const Pageone({super.key});

}


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intial State And Dispose"),
      ),
      body: Container(
        child: ListView(
          children: [
            MaterialButton(onPressed: (){
            Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);
            },
            child: const Text("Go To Homepage")
            ),
            MaterialButton(onPressed:() {
              Navigator.of(context).pushNamed("pagetwo");
            },
            child: const Text("Go To Page Two")
            ),
          ],
        ),
        
      ),
   );     
  }



