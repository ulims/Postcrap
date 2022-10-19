

import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';

void tradebottomsheet(context){
  showModalBottomSheet(context: context, 
  isScrollControlled: true,
  builder: ((context) {
    return Container(
    height: 442,
    width: double.infinity,
    color: background,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
      children: [
      const SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
      children: [
      GestureDetector(
        onTap: () {
        Navigator.of(context).pop();
        },
      child: Image.asset('assets/images/exit.png',width: 25,height: 25,))
      ],
      ),
      const SizedBox(height: 22,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
        children: const[
        Text('Instant Trade',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: textColor100
        ),
        ),
        SizedBox(height: 7,),
        Text('Buy or Sell crypto instantly at the current market price',
        textAlign: TextAlign.center,
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textColor80,
        height: 1.4
        ),
        ),
        ],
        ),
      ),
      const SizedBox(height: 30,),
      Container(
      height: 60,
      width: double.infinity,
      decoration:  BoxDecoration(
      border: Border.all(color: textColor3, width: 1),
      borderRadius: BorderRadius.circular(10),
      color: background
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Row(
        children: [
        Image.asset('assets/images/buy.png', width: 36,height: 36,),
        const SizedBox(width: 12,),
        const Text('Instant Buy',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: textColor100
        ),
        ),
        ],
        ),
      ),
      ),
      const SizedBox(height: 24,),
      Container(
      height: 60,
      width: double.infinity,
      decoration:  BoxDecoration(
      border: Border.all(color: textColor3, width: 1),
      borderRadius: BorderRadius.circular(10),
      color: background
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Row(
        children: [
        Image.asset('assets/images/sell.png', width: 36,height: 36,),
        const SizedBox(width: 12,),
        const Text('Instant Sell',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: textColor100
        ),
        ),
        ],
        ),
      ),
      ),
       const SizedBox(height: 24,),
      Container(
      height: 60,
      width: double.infinity,
      decoration:  BoxDecoration(
      border: Border.all(color: textColor3, width: 1),
      borderRadius: BorderRadius.circular(10),
      color: background
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Row(
        children: [
        Image.asset('assets/images/invest.png', width: 36,height: 36,),
        const SizedBox(width: 12,),
        const Text('Instant Invest',
        style: TextStyle(
        fontFamily: 'Mabry-Pro',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: textColor100
        ),
        ),
        ],
        ),
      ),
      ),
      ],
      ),
    ),
    );
  }));
}