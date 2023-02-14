import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  MyIconButton({super.key, this.color = Colors.black, required this.function, required this.icon});

  IconData icon;
  Color color;
  Function() function;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: function,
        icon: Icon(
          icon,
          color: color,
          size: 36,
        ));
  }
}
