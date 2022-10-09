
import 'package:flutter/material.dart';
import 'package:postcrap/models/user.dart';
import 'package:postcrap/screens/authenticate/authenticate.dart';
import 'package:postcrap/screens/nav/home.dart';
import 'package:postcrap/screens/nav/nav.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    if (user == null) {
      return const Authenticate();
    } else {
      return  const Nav();
    }
  }
}
