import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [Text("Home Pages", style: TextStyle(fontSize: 50))],),
    );
  }
}