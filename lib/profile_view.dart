import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: const[ Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person,color: Colors.pink),
          ),
            Text("Profile page"),
          ],
        ),
      ),
    );
  }
}
