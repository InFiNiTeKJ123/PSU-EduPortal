import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key,});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("PSU EduPortal",),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: [
            Text("สวัสดีครับท่านผู้เจริญทั้งหลาย")
          ],
        ),
      ),
//      bottomNavigationBar: Container(backgroundColor: Theme.of(context).colorScheme.inversePrimary),
    );
  }
}