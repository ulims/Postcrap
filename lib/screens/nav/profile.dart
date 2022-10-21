import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/screens/edit_profile.dart';
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
          padding: EdgeInsets.only(right: 20),
          child: Text('More',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          color: textColor100,
          fontSize: 18,
          fontWeight: FontWeight.w900
          ),
          )
        ),
       
        ),)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
          children: [
          const SizedBox(height: 20,),
          Row(
          children: [
          Text('data'),
          const Spacer(),
          GestureDetector(
            onTap: () async{
            await _auth.logOut();
            },
          child: Image.asset('assets/images/logout.png', height: 24,width: 22,))
          ],
          )
          ],
          ),
        ),
      )
    );
  }
}
