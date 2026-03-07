
import 'package:flutter/material.dart';
import 'package:flutter_1/Responsive_design/widget/calcButton.dart';
class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              calcButton(onClick: (){}, text: '7'),
              calcButton(onClick: (){}, text: '8'),
              calcButton(onClick: (){}, text: '9'),
              calcButton(onClick: (){}, text: '÷', color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calcButton(onClick: (){}, text: '4'),
              calcButton(onClick: (){}, text: '5'),
              calcButton(onClick: (){}, text: '6'),
              calcButton(onClick: (){}, text: '×', color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calcButton(onClick: (){}, text: '1'),
              calcButton(onClick: (){}, text: '2'),
              calcButton(onClick: (){}, text: '3'),
              calcButton(onClick: (){}, text: '+', color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calcButton(onClick: (){}, text: '7'),
              calcButton(onClick: (){}, text: '8'),
              calcButton(onClick: (){}, text: '9'),
              calcButton(onClick: (){}, text: '±', color: Colors.orange,),

            ],
          ),
        ],
      ),
    );
  }
}
