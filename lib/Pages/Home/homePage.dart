import 'package:flutter/material.dart';
import 'package:playlist_app/Common/colors.dart';
import 'package:playlist_app/Common/common.dart';
import 'package:playlist_app/Pages/Home/Widgets/appBarHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray900(),
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const AppBarHome(), textoBienvenida(), seccionBase()],
            )),
      ),
    );
  }

  Column seccionBase() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Populares",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        itemBase()
      ],
    );
  }

  Container itemBase() {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 10),
      padding: const EdgeInsets.all(15),
      width: 170,
      height: 250,
      decoration: BoxDecoration(color: MyColors.gray800(), borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("lib/Assets/portada.jpg"))),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Mi locura",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Text(
              "Sonido de los 90s, rock mejor.",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ))
      ]),
    );
  }

  Column textoBienvenida() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Hello,",
          style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "Sebastian",
          style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
