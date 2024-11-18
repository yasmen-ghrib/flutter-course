
import 'package:flutter/material.dart';

class ListGenerate extends StatelessWidget {
  const ListGenerate({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List generate'),
      ),
      body: ListView(
        children: [
          ...List.generate(124, (index) => Text("${1900 + index}" , style: const TextStyle(fontSize: 30),))  
        ]
      ),
    );
  }
}












     