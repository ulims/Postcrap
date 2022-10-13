import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/assetcard.dart';
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
      backgroundColor: textColor100,
      automaticallyImplyLeading: false,
      )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            width: double.infinity,
            color: textColor100,
           // height: height/2.75,
            child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text1,
              const SizedBox(height: 14,),
              TypeText(  NumberFormat.simpleCurrency(locale: 'en-US', decimalDigits: 2)
              .format(00),
              textAlign: TextAlign.center,
              style: const TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 40,
              color: background,
              fontWeight: FontWeight.w500,
              ),
              duration: const Duration(seconds: 1)),
              const SizedBox(height: 35,),
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
              sendtext
              ],
              ),
              const SizedBox(width: 30,),
              Column(
              children: [
              Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(onPressed: () {}, icon: Image.asset('assets/images/receive.png'),),
              ),
              const SizedBox(height: 0,),
              receivetext
              ],
              ),
              const SizedBox(width: 30,),
              Column(
              children: [
              Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(onPressed: () {}, icon: Image.asset('assets/images/trade.png'),),
              ),
              const SizedBox(height: 0,),
              tradetext
              ],
              ),
              ],
              )
              ],
              ),
            ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  assettext,
                  const SizedBox(height: 16,),
                  const AssetCard()
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
