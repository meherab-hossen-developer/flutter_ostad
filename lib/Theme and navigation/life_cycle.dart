import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(40, 163, 137, 1.0),
        title: Text("Counter App",style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),),
      ),
      body: Column(
        children: [
          Center(
            child:
              Text("0", style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),),
          ),
        ],
      ),
    );
  }
}
