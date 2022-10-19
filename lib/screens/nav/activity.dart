import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/shared/activity.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/text.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
          padding: EdgeInsets.only(right: 20,top: 10),
          child: Text(
            'Activity',
            style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: textColor100
            ),
            ),
        ),
        ),)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: noActivity,
          ),
        ],
      )
    );
  }
}
