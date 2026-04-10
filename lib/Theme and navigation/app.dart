import 'package:flutter/material.dart';
//import 'package:flutter_1/Responsive_design/Water_tracker_app/w.tracker.dart';
import 'package:flutter_1/Stateful_Widgets/Money_management_System/moneyMNG.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: 'To-do list app',
      initialRoute: '/',

      routes: {
        '/': (context) => MoneyManagement()
      },
    );
  }
}