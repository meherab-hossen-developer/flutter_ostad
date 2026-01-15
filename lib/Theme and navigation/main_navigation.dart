import 'package:flutter/material.dart';
import 'package:flutter_1/Theme%20and%20navigation/assignment.dart';
import 'package:flutter_1/Theme%20and%20navigation/nav_and_ui.dart';

class MNav extends StatelessWidget {
  const MNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/0');
              }, child: Text('Alert')),

              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/1');
              }, child: Text('Assignment')),

              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/2');
              }, child: Text('Navigation')),

              ElevatedButton(onPressed: (){

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Assignment()));
              }, child: Text('Assignment.Re')),

            ],
          ),
        ),
      ),
    );
  }
}
