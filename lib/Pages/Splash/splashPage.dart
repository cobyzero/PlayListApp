import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).whenComplete(() {
      Navigator.pushNamed(context, "/Main");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1d191a),
      child: Center(
        child: Image.asset(
          "lib/Assets/logo.png",
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
      ),
    );
  }
}
