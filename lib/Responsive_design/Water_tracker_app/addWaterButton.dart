import 'package:flutter/material.dart';

class addWbutton extends StatelessWidget {
  final int amount;
  IconData ? icon;
  final VoidCallback onclick;
  addWbutton({
    super.key, required this.amount, required this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(onPressed: onclick,
          icon: Icon(icon ?? Icons.water_drop),
          label: Text('+${amount} LTR'),),
      ),
    );
  }
}