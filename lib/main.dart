// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/view/home_page.dart';
import 'package:app/view/profile_page.dart';
import 'package:app/view/video_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABC APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    VideoPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Hi, ABC'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
          leading: Container(
            padding: EdgeInsets.all(7),
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          key: Key('bottom'),
          backgroundColor: Colors.blue.shade900,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // backgroundColor: Colors.blue.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call_outlined),
              label: 'Video',
              // backgroundColor: Colors.blue.shade900,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              // backgroundColor: Colors.blue.shade900,
            ),
          ],
        ),
      );
}
