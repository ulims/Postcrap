import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:postcrap/models/savings_model.dart';
import 'package:postcrap/shared/constants.dart';
import 'dart:io';

class Savings extends StatefulWidget {
  const Savings({Key? key}) : super(key: key);

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  int currentIndex = 0;
  List<SavingsModel> savingslist = <SavingsModel>[
    SavingsModel(amount: 20000, walletname: 'Naira Balance'),
    SavingsModel(amount: 0.00, walletname: 'Dollar Balance'),
    SavingsModel(amount: 0.00, walletname: 'Investment Balance')
  ];
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
        statusBarBrightness: Brightness.light),
        elevation: 0.0,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Padding(
        padding: EdgeInsets.only(right: 20, top: 10),
        child: Text(
        'Savings',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 18,
        fontWeight: FontWeight.w900,
        color: textColor100),
        ),
        ),
        ),
        )),
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        children: [
        const SizedBox(height: 25),
                  
          Column(
          children: [
          SizedBox(
          height: 135,
          child: ListView.builder(
          itemCount: savingslist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
          return Padding(
          padding: EdgeInsets.only(
          right: index == 1 ? 10 : 0,
          left: index == 1 ? 10 : 0),
          child: Column(
          children: [
          Container(
          height: 115,
          width: MediaQuery.of(context).size.width / 1.20,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: index == 1
          ? except
          : index == 2
          ? green
          : textColor100),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(savingslist[index].walletname,
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: background
            ),
            ),
            const SizedBox(height: 10,),
            Text(NumberFormat.simpleCurrency(
            locale: Platform.localeName, name: index == 1 ? "USD" : "NGN").format(savingslist[index].amount),
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            color: background,
            fontWeight: FontWeight.w500,
            fontSize: 30
            ),
            )
            ],
            ),
          ),
          ),
          const SizedBox(height: 10,),
          const SizedBox(height: 10,),

          ],
          ),
          );

          },
          ),
          ),
          SizedBox(
          height: 10,
          child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeIn,
          height: 10.0,
          child: ListView.builder(
          itemCount: savingslist.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
          return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
          margin: const EdgeInsets.symmetric(
          horizontal: 3.0),
          width: currentIndex == index ? 24 : 8,
          height: 8,
          decoration: BoxDecoration(
          color: currentIndex == index ? textColor100 : textColor10,
          borderRadius: BorderRadius.circular(10.0),
          ),
          ),
          ]);
          },
          ),
          ),
          ),
          ],
          )
          ],
          ),
          ),
          ));
          }
          }
