import 'package:flutter/material.dart';
import 'package:flutter_1/Theme%20and%20navigation/alert.dart';
import 'package:flutter_1/Theme%20and%20navigation/assignment.dart';
//import 'package:flutter_1/Theme%20and%20navigation/alert.dart';
//import 'package:flutter_1/Theme%20and%20navigation/assignment.dart';
import 'package:flutter_1/Theme%20and%20navigation/drawerAndTapBar.dart';
import 'package:flutter_1/Theme%20and%20navigation/main_navigation.dart';
//import 'home.dart';
// import 'nav_and_ui.dart';
//import 'widget.dart';
// import 'layouts.dart';
//import 'listview.dart';
// import 'gridView.dart';
// import 'stack.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey,
        appBarTheme: AppBarTheme(

          color: Colors.deepOrange,
          titleTextStyle: TextStyle(

            fontSize: 18
          )
        )
      ),

      title: 'To-do list app',
      initialRoute: '/',

      routes: {

        '/': (context) => MNav(),
        '/0': (context) => Alert(),
        '/1': (context) => Assignment(),
        '/2': (context) => Navigation()
      },
    );
  }
}