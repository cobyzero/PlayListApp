import 'package:flutter/material.dart';
import 'package:playlist_app/Common/colors.dart';
import 'package:playlist_app/Pages/Main/Widgets/botonesMain.dart';
import 'package:playlist_app/Pages/Login/Widgets/appbarLogin.dart';
import 'package:playlist_app/Pages/Login/Widgets/formFieldLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool active = false;
  bool registrado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray900(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const AppBarLogin(),
              Text(
                active ? "Iniciar Sesion" : "Cual es tu direccion de correo?",
                style:
                    const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              if (active) textLoginUser(),
              form(),
              boton(context)
            ],
          ),
        ),
      ),
    );
  }

  textLoginUser() {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const Text(
            "Usando ",
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            email.text,
            style: const TextStyle(color: Colors.white),
          ),
          const Text(" para iniciar sesion.", style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }

  Center boton(BuildContext context) {
    return Center(
      child: BotonesMain(
          icon: Icons.email_outlined,
          texto: "Continuar con correo",
          function: () {
            if (registrado) {
              if (active) {
                if (email.text.isNotEmpty && password.text.isNotEmpty) {}
              } else if (!active) {
                if (email.text.isNotEmpty) {
                  setState(() {
                    FocusScope.of(context).requestFocus(FocusNode());
                    active = true;
                  });
                }
              }
            } else if (!registrado) {
              Navigator.pushNamed(context, "/Register", arguments: email.text);
            }
          }),
    );
  }

  FormFieldLogin form() {
    return FormFieldLogin(
        texto: active ? "TU CONTRASEÑA" : "TU CORREO",
        controller: active ? password : email,
        type: TextInputType.emailAddress);
  }
}
