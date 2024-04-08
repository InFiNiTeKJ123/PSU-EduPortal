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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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

  int current_page = 0;

  final List<Widget> Pages = [
    const Home(),
    const Time_Table(),
    const Profile(),
    const Activity(),
    const Setting()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget CurrentPage = const Home();

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
        bucket: bucket,
        ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.people),
        onPressed: () {},),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: MenuBar(),
    );
  }

  BottomAppBar MenuBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      height: 70,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      CurrentPage = const Home();
                      current_page = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.home, color: current_page == 0 ? Colors.blue : Colors.grey,),
                      Text("หน้าหลัก", style: TextStyle(color: current_page == 0 ? Colors.blue : Colors.grey),)
                    ],),
                  ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      CurrentPage = const Time_Table();
                      current_page = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.home, color: current_page == 1 ? Colors.blue : Colors.grey,),
                      Text("ตาราง", style: TextStyle(color: current_page == 1 ? Colors.blue : Colors.grey),)
                    ],),
                  ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      CurrentPage = const Activity();
                      current_page = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.local_activity, color: current_page == 2 ? Colors.blue : Colors.grey,),
                      Text("กิจกรรม", style: TextStyle(color: current_page == 2 ? Colors.blue : Colors.grey),)
                    ],),
                  ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      CurrentPage = const Setting();
                      current_page = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(Icons.settings, color: current_page == 3 ? Colors.blue : Colors.grey,),
                      Text("ตั้งค่า", style: TextStyle(color: current_page == 3 ? Colors.blue : Colors.grey),)
                    ],),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
