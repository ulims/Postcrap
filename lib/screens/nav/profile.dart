import 'package:flutter/material.dart';
import 'package:postcrap/services/auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final Authservice _auth = Authservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: TextButton(
        child: Text('logout'),
        onPressed: () async {
          await _auth.logOut();
          print('sign out');
        },
      )),
    );
  }
}
