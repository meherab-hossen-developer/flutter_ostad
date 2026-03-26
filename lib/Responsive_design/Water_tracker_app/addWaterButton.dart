import 'package:flutter/material.dart';

class addWbutton extends StatelessWidget {
  final int amount;
  final IconData? icon;
  final VoidCallback onclick;

  const addWbutton({
    super.key,
    required this.amount,
    required this.onclick,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          onPressed: onclick,
          icon: Icon(icon ?? Icons.water_drop),
          label: Text('+$amount LTR'),
        ),
      ),
    );
  }
}