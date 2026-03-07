
import 'package:flutter/material.dart';
import 'package:flutter_1/Responsive_design/widget/calcButton.dart';
class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String _output = '0';
  String _input = '0';
  String _operator = '';
  double num1 = 0;
  double num2 = 0;

  void buttonPress(String value){
    print('int value = $value');
    setState(() {

      if(value == 'C'){

        _output = '0';
        _input = '0';
        _operator = '';
        num1 = 0;
        num2 = 0;
      }else if(value == '='){
        num2 = double.parse(_input);
        if(_operator == '+'){
          _output = (num1 + num2).toString();
        }else if(_operator == '-'){
          _output = (num1 - num2).toString();
        }else if(_operator == '*'){
          _output = (num1 * num2).toString();
        }else if(_operator == '÷'){
          _output = num2 != 0 ? (num1 / num2).toString() : 'Error';
        }
      }else if(['+','-','*','÷'].contains(value)){
        num1 = double.parse(_input);
        _operator = value;
        _input = '0';
      }else{
        if(_input == '0'){
          _input = value;
        }else{
          _input += value;
        }
        _output = _input;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(_output,style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),),
              ),
            ),
          ),
          Row(
            children: [
              calcButton(onClick: ()=>buttonPress('7'), text: '7'),
              calcButton(onClick: ()=>buttonPress('8'), text: '8'),
              calcButton(onClick: ()=>buttonPress('9'), text: '9'),
              calcButton(onClick: ()=>buttonPress('÷'), text: '÷', color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calcButton(onClick: ()=>buttonPress('4'), text: '4'),
              calcButton(onClick: ()=>buttonPress('5'), text: '5'),
              calcButton(onClick: ()=>buttonPress('6'), text: '6'),
              calcButton(onClick: ()=>buttonPress('*'), text: '×', color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              calcButton(onClick: ()=>buttonPress('1'), text: '1'),
              calcButton(onClick: ()=>buttonPress('2'), text: '2'),
              calcButton(onClick: ()=>buttonPress('3'), text: '3'),
              calcButton(onClick: ()=>buttonPress('-'), text: '-', color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calcButton(onClick: ()=>buttonPress('C'), text: 'C'),
              calcButton(onClick: ()=>buttonPress('0'), text: '0'),
              calcButton(onClick: ()=>buttonPress('='), text: '='),
              calcButton(onClick: ()=>buttonPress('+'), text: '+', color: Colors.orange,),

            ],
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
