import 'package:flutter/material.dart';

import 'drawerAndTapBar.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key}){

    print('Constructor 1 called');
  }

  @override
  State<CounterApp> createState() {

    print('Constructor 2 called');
    return _CounterAppState();
  }
}

class _CounterAppState extends State<CounterApp> {
  int number = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState called');
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('Deactivated');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('Disposed');
  }

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
              Text(
                number.toString(),
                style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){

                setState(() {
                  number--;
                  print('$number');
                });
              },
                child: Text('-', style: TextStyle(
                  fontSize: 35,
                ),),
              ),
              ElevatedButton(onPressed: (){

                setState(() {

                  number++;
                  print('$number');
                });
              },
                child: Text('+', style: TextStyle(
                  fontSize: 35,
                ),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Navigation()));
            print('Drawer and Tapbar button pressed');
          },
            child: Text('Drawer and TapBar'),
          ),
        ],
      ),
    );
  }
}
