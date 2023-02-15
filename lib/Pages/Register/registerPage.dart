import 'package:flutter/material.dart';

import '../../Common/colors.dart';
import '../Main/Widgets/botonesMain.dart';
import '../Login/Widgets/appbarLogin.dart';
import '../Login/Widgets/formFieldLogin.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String email = ModalRoute.of(context)!.settings.arguments as String;
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
              const Text(
                "Registrate",
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              textLoginUser(email),
              formName(),
              formPassword(),
              boton(context)
            ],
          ),
        ),
      ),
    );
  }

  textLoginUser(String email) {
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
            email,
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
            Navigator.pushNamed(context, "/Home");
          }),
    );
  }

  FormFieldLogin formName() {
    return FormFieldLogin(texto: "TU NOMBRE", controller: name, type: TextInputType.name);
  }

  FormFieldLogin formPassword() {
    return FormFieldLogin(
      texto: "TU CONTRASEÑA",
      controller: password,
      type: TextInputType.name,
      oscure: true,
    );
  }
}
