import 'package:flutter/material.dart';
import 'addWaterButton.dart';

class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {
  int current = 0;
  final int goal = 5000;

  void waterAdd(int amount){
    setState(() {
      current = (current + amount).clamp(0, goal);
    });
  }

  @override
  Widget build(BuildContext context) {

    double progress = (current / goal).clamp(0, 1);
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

            //Total tank information
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
                  Text('$current',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 30,),

            //
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  strokeWidth: 10,
                  value: progress,
                  color: Color.fromRGBO(40, 163, 137, 1.0),
                                ),
                ),
                Text('${(progress * 100).toInt()}%', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
            SizedBox(height: 10,),

            Wrap(
              children: [
                addWbutton(amount: 100, onclick:()=> waterAdd(100)),
                addWbutton(amount: 200, onclick:()=> waterAdd(200)),
                addWbutton(amount: 300, onclick:()=> waterAdd(300)),
                addWbutton(amount: 500, onclick:()=> waterAdd(500)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
