import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
            Text("Search page"),
          ],
        ),
      ),
    );
  }
}
