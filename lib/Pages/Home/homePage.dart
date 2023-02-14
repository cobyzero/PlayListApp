import 'package:flutter/material.dart';
import 'package:playlist_app/Common/colors.dart';
import 'package:playlist_app/Pages/Home/Widgets/botonesHome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray900(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [imagenLogo(context), textoBienvenida(), botones(context), textTerminos()],
        ),
      ),
    );
  }

  Column botones(BuildContext context) {
    return Column(
      children: [
        botonCorreo(context),
        botonFacebook(),
      ],
    );
  }

  ElevatedButton botonFacebook() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.facebook),
      label: const Text("Continuar con Facebook"),
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.only(left: 40, right: 40)),
    );
  }

  Text textTerminos() {
    return Text(
      "Al ingresar estas aceptando nuestros terminos y condiciones.",
      textAlign: TextAlign.center,
      style: TextStyle(color: MyColors.gray600()),
    );
  }

  botonCorreo(BuildContext context) {
    return BotonesHome(
        icon: Icons.email_outlined,
        texto: "Continuar con correo",
        function: () {
          Navigator.pushNamed(context, "/Login");
        });
  }

  Image imagenLogo(BuildContext context) {
    return Image.asset(
      "lib/Assets/logo.png",
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.width * 0.5,
    );
  }

  Text textoBienvenida() {
    return const Text(
      "Bienvenido a la capital de la musica",
      textAlign: TextAlign.start,
      style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
