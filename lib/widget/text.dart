import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';



final animtext2 = TweenAnimationBuilder(
  tween: Tween<double>(begin: 0, end: 1),
  duration: const Duration(milliseconds: 500),
  curve: Curves.easeIn,
  builder: (BuildContext context, double val, Widget? child) {
  return Opacity(
    opacity: val,
    child: Padding(
    padding: EdgeInsets.only(top: val * 10),
    child: child,
    ),
  );
  },
  child: const Text(
  'Create an account',
  style: TextStyle(
  fontFamily: 'Mabry-Pro',
  fontSize: 25,
  fontWeight: FontWeight.w500,
  color: textColor100,)
  ),
);


final animtext1 = TweenAnimationBuilder(
  tween: Tween<double>(begin: 0, end: 1),
  duration: const Duration(milliseconds: 500),
  curve: Curves.easeIn,
  builder: (BuildContext context, double val, Widget? child) {
  return Opacity(
    opacity: val,
    child: Padding(
    padding: EdgeInsets.only(top: val * 10),
    child: child,
    ),
  );
  },
  child: const Text(
  'Hi, Wecome Back! 👋',
  style: TextStyle(
  fontFamily: 'Mabry-Pro',
  fontSize: 25,
  fontWeight: FontWeight.w500,
  color: textColor100,)
  ),
);

final animtext3 = TweenAnimationBuilder(
  tween: Tween<double>(begin: 0, end: 1),
  duration: const Duration(milliseconds: 500),
  curve: Curves.linearToEaseOut,
  builder: (BuildContext context, double val, Widget? child) {
  return Opacity(
    opacity: val,
    child: Padding(
    padding: EdgeInsets.only(top: val * 10),
    child: child,
    ),
  );
  },
  child: const Text(
  'Hello again, you’ve been missed!',
  style: TextStyle(
  fontFamily: 'Mabry-Pro',
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: textColor60,)
  ),
);



final titletext = TweenAnimationBuilder(
  tween: Tween<double>(begin: 0, end: 1),
  duration: const Duration(milliseconds: 500),
  curve: Curves.easeIn,
  builder: (BuildContext context, double val, Widget? child) {
  return Opacity(
    opacity: val,
    child: Padding(
    padding: EdgeInsets.only(top: val * 10),
    child: child,
    ),
  );
  },
  child: RichText(
  text: const TextSpan(
  style: TextStyle(
  fontFamily: 'Aeonik',
  fontSize: 22,
  color: textColor100,
  fontWeight: FontWeight.w700),
  children: [
    TextSpan(text: 'Post'),
    WidgetSpan(
        child: SizedBox(
      width: 0,
    )),
    TextSpan(
        text: 'crap',
        style: TextStyle(color: primary100)),
      ]),
),
);

