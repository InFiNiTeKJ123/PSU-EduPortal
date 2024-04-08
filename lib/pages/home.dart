import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key,});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final logo = 'assets/Logo.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset(logo, height: 60,),
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