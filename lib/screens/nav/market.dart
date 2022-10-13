import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/shared/constants.dart';


class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
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
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(right: 20, top: 10),
          child: Text('Market', 
        style: TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 18,
          fontWeight: FontWeight.w900
          ),),
        ),
        ),)),
      body: SafeArea(
        child: Container(
        decoration: const BoxDecoration(
          color: background,
        boxShadow: [
        BoxShadow(
        offset: Offset(0, 0.4,),
        blurRadius: 0,
        color: textColor3
        )
        ]
        ),
          height: 80,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
            children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: textColor100
              ),
              child: Image.asset('assets/images/status A.png'),
            ),
            const SizedBox(width: 19,),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: textColor100
              ),
              child: Image.asset('assets/images/status B.png'),
            ),
            const SizedBox(width: 19,),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: textColor100
              ),
              child: Image.asset('assets/images/status C.png'),
            ),
            const SizedBox(width: 19,),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: textColor100
              ),
              child: Image.asset('assets/images/status D.png'),
            ),
            const SizedBox(width: 19,),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: textColor100
              ),
              child: Image.asset('assets/images/status E.png'),
            ),
            
            ],
            ),
          ),
        ),
      )
    );
  }
}
