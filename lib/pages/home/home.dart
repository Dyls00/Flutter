// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F67EA),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Transform(
            transform: Matrix4.identity()..rotateZ(20),
            origin: const Offset(150, 50),
            child: Image.asset('assets/images/bg_liquid.png', width: 200),
          ),
          Positioned(
            right: 0,
            top: 200,
            child: Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 100),
              child: Image.asset('assets/images/bg_liquid.png', width: 200),
            ),
          ),
          Container(),
        ],
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget NavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'Accueil',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Alevins',
          icon: Icon(
            Icons.set_meal,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Aliments',
          icon: Icon(Icons.takeout_dining),
        ),
        BottomNavigationBarItem(
          label: 'Vente',
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
