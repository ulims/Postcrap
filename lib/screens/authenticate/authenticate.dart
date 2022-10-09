import 'package:flutter/material.dart';
import 'package:postcrap/screens/authenticate/login.dart';
import 'package:postcrap/screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showLogin = true;
  toggle(){
    setState(() => showLogin = !showLogin,);
  }
  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return Login(change:toggle);
    } else {
      return Register(change:toggle);
    }
  }
}
