import 'package:flutter/material.dart';
import 'widget.dart';

class Nav extends StatefulWidget {
  Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('Navigation and UI', style: TextStyle(
          color: Colors.white,
        )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(20, 13, 73, 1.0),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Color.fromRGBO(20, 13, 73, 1.0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.5),
                    )
                  ),
                  onPressed: () {

                print('Submit button pressed!');
              }, child: Text('Submit')),
        
              SizedBox(
                  height: 20
              ),
        
              SizedBox(

                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(

                        backgroundColor: Color.fromRGBO(20, 13, 73, 1.0),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.5),
                        )
                    ),
                    onPressed: () {

                      print('Submit button pressed!');
                    }, child: Text('Submit')),
              ),
        
              SizedBox(
                height: 20
              ),
        
              SizedBox(

                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(

                        backgroundColor: Color.fromRGBO(20, 13, 73, 1.0),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )
                    ),
                    onPressed: () {

                      print('Submit button pressed!');
                    }, child: Text('Submit')),
              ),
        
              SizedBox(
                  height: 20
              ),
        
              OutlinedButton(onPressed: () {

                print('Outline button pressed!');
              }, child: Text('Outline Button')),
        
              SizedBox(
                  height: 10
              ),
        
              SizedBox(
                height: 50,
                width: 100,
                child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Color.fromRGBO(20, 13, 73, 1.0),
                      // This changes the text color
                    ),
                    onPressed: () {

                  print('Text Button pressed!');
                }, child: Text('Text Button')),
              ),
              
              Icon(Icons.phone,

                size: 50,
                color: Color.fromRGBO(20, 13, 73, 1.0),
              ),
        
              SizedBox(
                height: 100,
                width: 50,
                child: IconButton(onPressed: () {

                  print('Settings icon pressed');
                }, icon: Icon(Icons.settings,

                  size: 50,
                  color: Color.fromRGBO(20, 13, 73, 1.0)
                )),
              ),

              GestureDetector(

                onDoubleTap: () {

                  print('This text has been pressed twice');
                },
                child: Text('Press me twice!!', style: TextStyle(
                    color: Color.fromRGBO(20, 13, 73, 1.0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Padding', style: TextStyle(
                  color: Color.fromRGBO(20, 13, 73, 1.0),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),

              ElevatedButton(onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => flutterWidget()),
                );
              }, child: Text('Layouts'))
            ],
          ),
        ),
      ),
    );
  }
}
