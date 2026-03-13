import 'package:flutter/material.dart';

class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 163, 137, 1.0),
        title: Text('Water tracker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(80),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 2
                  )
                ]
              ),
              child: Column(
                children: [
                  Text('In tank',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('2000 LTR',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
