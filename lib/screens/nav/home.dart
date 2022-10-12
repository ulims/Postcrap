import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/text.dart';
import 'package:type_text/type_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: textColor100,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark
      ),
      elevation: 0.0,
      backgroundColor: background,
      automaticallyImplyLeading: false,
      )),
      body: Column(
        children: [
          Container(
          width: double.infinity,
          color: textColor100,
          height: height/2.7,
          child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 60, 30, 15),
          child: Column(
          children: [
            text1,
            const SizedBox(height: 20,),
            TypeText(  NumberFormat.simpleCurrency(locale: 'en-US', decimalDigits: 2)
            .format(0.00),
            textAlign: TextAlign.center,
            style: const TextStyle(
            fontFamily: 'Neue Machina',
            fontSize: 40,
            color: background,
            fontWeight: FontWeight.w500,
            ),
            duration: const Duration(seconds: 1)),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Column(
            children: [
            Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(onPressed: () {}, icon: Image.asset('assets/images/send.png'),),
            ),
            const SizedBox(height: 0,),
            text2
            ],
            ),
            const SizedBox(width: 35,),
            Column(
            children: [
            Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(onPressed: () {}, icon: Image.asset('assets/images/send.png'),),
            ),
            const SizedBox(height: 0,),
            text2
            ],
            ),
            const SizedBox(width: 35,),
            Column(
            children: [
            Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(onPressed: () {}, icon: Image.asset('assets/images/send.png'),),
            ),
            const SizedBox(height: 0,),
            text2
            ],
            ),
            ],
            )
            ],
            ),
          ),
          )
        ],
      ),
    );
  }
}
