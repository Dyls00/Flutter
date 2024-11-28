import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 78, 49, 49),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 700,
              color: Color.fromARGB(255, 197, 34, 34),
            ),
            Container(
              height: 700,
              color: Color.fromARGB(255, 218, 90, 90),
            ),
          ],
        ),
      ),
    );
  }
}
