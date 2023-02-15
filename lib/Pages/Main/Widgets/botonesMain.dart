import 'package:flutter/material.dart';

class BotonesMain extends StatelessWidget {
  BotonesMain(
      {super.key,
      required this.icon,
      this.color = const Color(0xffd83745),
      required this.texto,
      required this.function});

  Function() function;
  IconData icon;
  String texto;
  Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: function,
      icon: Icon(icon),
      label: Text(texto),
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: color,
          padding: const EdgeInsets.only(left: 50, right: 50)),
    );
    ;
  }
}
