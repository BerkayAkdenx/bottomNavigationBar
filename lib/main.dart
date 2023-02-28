import 'package:custom_bottom_navigation/home_view.dart';
import 'package:custom_bottom_navigation/profile_view.dart';
import 'package:custom_bottom_navigation/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Widget> pages = [
    HomeView(),
    SearchView(),
    ProfileView(),
  ];
  var count = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: pages[count],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_off_rounded), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: count,
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        onTap: (index){
          setState((){
            count = index;
            print(count);
          });
        },
      ),
    );
  }
}
