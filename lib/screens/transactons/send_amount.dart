import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/models/asset_model.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class SendAmount extends StatefulWidget {
  final AssetModel accept;
  const SendAmount({Key? key, required this.accept}) : super(key: key);

  @override
  State<SendAmount> createState() => _SendAmountState();
}

class _SendAmountState extends State<SendAmount> {
  String text = "";

  onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset(
                    0,
                    0.4,
                  ),
                  blurRadius: 0,
                  color: textColor10)
            ]),
            child: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarBrightness: Brightness.light,
                  systemNavigationBarIconBrightness: Brightness.light,
                  systemNavigationBarColor: textColor100),
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
              title: const Text(
                'Enter Amount',
                style: TextStyle(
                    color: textColor100,
                    fontFamily: 'Mabry-Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
            ),
          )),
      
    );
  }
}
