
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: const[ Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.home,color: Colors.pink),
          ),
            Text("Home page"),
          ],
        ),
      ),
    );
  }
}
