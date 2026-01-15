import 'package:flutter/material.dart';
import 'package:flutter_1/Theme%20and%20navigation/stack.dart';

class gridV extends StatelessWidget {
  const gridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(20, 13, 73, 1.0),
        title: Text(
          'Grid View',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          10,
          (index) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone_android, size: 50, color: Colors.white,),
                  SizedBox(height: 5),
                  Text('Cash out',style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const stacK()),
          );
        },
        child: Icon(Icons.stacked_bar_chart),
        tooltip: 'Go to Stack View',
      ),
    );
  }
}
