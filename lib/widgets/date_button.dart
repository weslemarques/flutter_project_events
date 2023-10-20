import 'package:flutter/material.dart';

class DateButton extends StatelessWidget {
  DateButton(this.dayNumber, {super.key});

  int dayNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      height: 40,
      child: Text(
        '$dayNumber',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),

      decoration: BoxDecoration(
        color: Colors.indigoAccent,
      ),
    );
  }
}
