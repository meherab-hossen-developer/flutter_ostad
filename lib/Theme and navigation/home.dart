import 'package:flutter/material.dart';
import 'nav_and_ui.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Your daily to-do list', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Text', style: TextStyle(

              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            )),
            Text('Text', style: TextStyle(

              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            )),
            Text('Text', style: TextStyle(

              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            )),
            Text('Text', style: TextStyle(

              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            )),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('Text', style: TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                )),
                Text('Text', style: TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )),
                Text('Text', style: TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                )),
                Text('Text', style: TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                )),
              ]
            ),

            ElevatedButton(onPressed: (){

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Nav())
              );
            }, child: Text('Navigation & UI')),
          ],
        ),
      ),
    );
  }
}
