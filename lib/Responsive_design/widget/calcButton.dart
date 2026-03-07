import 'package:flutter/material.dart';
class calcButton extends StatelessWidget {
  String text;
  Color? color;
  final VoidCallback onClick;

  calcButton({
    super.key,
    required this.onClick,
    this.color,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(28),
          shape: CircleBorder(),
          //padding: const EdgeInsets.all(30),
          backgroundColor: color ?? Color.fromRGBO(43, 47, 48, 1.0),
        ),
        onPressed: onClick,
        child: Text(text, style: TextStyle(
          fontSize: 60,
          color: Colors.white,
        ),),
      ),
    );
  }
}