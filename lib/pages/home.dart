import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("PSU EduPortal",),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Text("สวัสดีครับท่านผู้เจริญทั้งหลาย")
        ],
      ),
//      bottomNavigationBar: Container(backgroundColor: Theme.of(context).colorScheme.inversePrimary),
    );
  }
}