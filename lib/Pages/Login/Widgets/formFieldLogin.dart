import 'package:flutter/material.dart';

class FormFieldLogin extends StatelessWidget {
  FormFieldLogin(
      {super.key,
      required this.texto,
      required this.controller,
      required this.type,
      this.oscure = false});

  String texto;
  TextEditingController controller;
  TextInputType type;
  bool oscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.white,
      keyboardType: type,
      obscureText: oscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
          floatingLabelStyle: const TextStyle(color: Colors.grey),
          labelText: texto,
          labelStyle: const TextStyle(color: Colors.grey),
          focusColor: Colors.white),
    );
  }
}
