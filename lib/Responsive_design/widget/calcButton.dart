import 'package:flutter/material.dart';
class calcButton extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback onClick;
  final double? font;

  calcButton({
    super.key,
    required this.onClick,
    this.color,
    required this.text,
    this.font
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: SizedBox(
          height: 90,
          width: 90,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: color ?? Color.fromRGBO(43, 47, 48, 1.0),
            ),
            onPressed: onClick,
            child: Text(text, style: TextStyle(
              fontSize: font ?? 60,
              color: Colors.white,
            ),),
          ),
        ),
      ),
    );
  }
}