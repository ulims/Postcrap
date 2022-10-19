import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/sendCard.dart';

class ReceiveSelect extends StatelessWidget {
  const ReceiveSelect({Key? key}) : super(key: key);

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
      systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light
      ),
        elevation: 0.0,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Padding(
        padding: const EdgeInsets.only(right: 10, left: 20),
        child: GestureDetector(
        onTap: () {
        Navigator.of(context).pop();
        },
        child: SizedBox(
        height: 25,
        width: 25,
        child: Image.asset('assets/images/back.png')),
          ),
        ),
        title: const Text('Select Crypto',
        style: TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 18,
          fontWeight: FontWeight.w900
          ),),
        ),)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:  Column(
              children: const[
                 SizedBox(height: 20,),
                SendCard(),
              ],
            ),
          ),
        )
    );
  }
}