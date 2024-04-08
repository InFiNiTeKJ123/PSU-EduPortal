import 'package:flutter/material.dart';
import 'package:psu_eduportal/pages/activity.dart';
import 'package:psu_eduportal/pages/home.dart';
import 'package:psu_eduportal/pages/profile.dart';
import 'package:psu_eduportal/pages/setting.dart';
import 'package:psu_eduportal/pages/time-table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

// Main Widget
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

   final logo = 'assets/Logo.png';

  int currect_page = 0;

  final List<Widget> Pages = [
    Home(),
    Time_Table(),
    Profile(),
    Activity(),
    Setting()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget CurrentPage = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset(logo, height: 60,),
        centerTitle: true,
      ),
      body: PageStorage(
        child: CurrentPage,
        bucket: bucket,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.people),
        onPressed: () {},),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
