import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/text.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: Container(
        decoration: const BoxDecoration(
        boxShadow: [
        BoxShadow(
        offset: Offset(0, 0.4,),
        blurRadius: 0,
        color: textColor10
        )
        ]
        ),
        child: AppBar(
        elevation: 0.0,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: titletext,
        ),
        ),)),
      body: SafeArea(
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text('Home')
        ),
      )
    );
  }
}
