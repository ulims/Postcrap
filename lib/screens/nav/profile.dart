import 'package:flutter/material.dart';
import 'package:postcrap/services/auth.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/text.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final Authservice _auth = Authservice();
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
        elevation: 0.0,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: chattext,
        actions: const[
         Padding(padding: EdgeInsets.only(right: 20,top: 10),
         child: ImageIcon(AssetImage('assets/images/prices.png'),
         color: textColor100,
         ),
         ) 
        ],
        ),)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
          children: [
           const SizedBox(height: 20,),
          Row(
          children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: textColor3,
            image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/profile.png')
            )
            ),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 31,
            width: 102,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: textColor100
            ),
            child: TextButton(
              child: const Text(
                'Edit profile',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 13.9,
                  fontWeight: FontWeight.w500,
                  color: background
                ),
                ),
                onPressed: () {},
              ),
          ),
          const SizedBox(width: 7,),
          Container(
            height: 31,
            width: 73,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: primary100
            ),
            child: TextButton(
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 13.9,
                  fontWeight: FontWeight.w500,
                  color: background
                ),
                ),
                onPressed: () async{
                  await _auth.logOut();
                },
              ),
          ),
          ],
          )
          ],
          ),
        ),
      ),
    );
  }
}
