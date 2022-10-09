
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';

final signupError = Flushbar(
  title: 'Error',
  message: 'Please provide a valid email address',
  backgroundColor: error,
  duration: const Duration(seconds: 3),
  showProgressIndicator: true,
  progressIndicatorBackgroundColor: primary100,
  flushbarPosition: FlushbarPosition.TOP,
).show;

final signupSuccess = Flushbar(
  title: 'Welcome',
  message: 'Thanks for registering',
  backgroundColor: success,
  duration: const Duration(seconds: 3),
  showProgressIndicator: true,
  progressIndicatorBackgroundColor: success,
  flushbarPosition: FlushbarPosition.TOP,
).show;

final signInSuccess = Flushbar(
  titleText: const Text('Welcome Back',
  style: TextStyle(
    fontFamily: 'Aeonik',
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600
  ),
  ),
  messageText: const Text('We have missed you dear, check in for latest post',
  style: TextStyle(
    fontFamily: 'Mabry-Pro',
    fontSize: 13,
    color: Colors.white,
    fontWeight: FontWeight.w500
  ),
  ),
  
  backgroundColor: success,
  duration: const Duration(seconds: 3),
  showProgressIndicator: true,
  progressIndicatorBackgroundColor: primary100,
  flushbarPosition: FlushbarPosition.TOP,
  flushbarStyle: FlushbarStyle.FLOATING,
  reverseAnimationCurve: Curves.decelerate,
  forwardAnimationCurve: Curves.elasticOut,
).show;

final signInError = Flushbar(
  titleText: const Text('Error',
  style: TextStyle(
    fontFamily: 'Aeonik',
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600
  ),
  ),
  messageText: const Text('Invalid user credentials',
  style: TextStyle(
    fontFamily: 'Mabry-Pro',
    fontSize: 13,
    color: Colors.white,
    fontWeight: FontWeight.w500
  ),
  ),
  
  backgroundColor: error,
  duration: const Duration(seconds: 3),
  showProgressIndicator: true,
  progressIndicatorBackgroundColor: success,
  flushbarPosition: FlushbarPosition.TOP,
  flushbarStyle: FlushbarStyle.FLOATING,
  reverseAnimationCurve: Curves.decelerate,
  forwardAnimationCurve: Curves.elasticOut,
).show;

