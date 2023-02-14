import 'package:flutter/material.dart';
import 'package:playlist_app/Pages/Account/accountPage.dart';

import '../../Common/colors.dart';
import 'Widgets/iconButton.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPage();
}

class _NavigatorPage extends State<NavigatorPage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.gray50(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 15))
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyIconButton(
              function: () {
                setState(() {
                  page = 0;
                });
              },
              icon: Icons.home,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: getPage(page),
    );
  }

  getPage(int pages) {
    switch (pages) {
      case 0:
        return;
      case 1:
        return AccountPage();
    }
  }
}
