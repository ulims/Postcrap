import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        elevation: 0.0,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: chattext,
        ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: textColor3,
                  image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/profile_pics.png')
                  )
                  ),
                ),
                const SizedBox(height: 10,),
              ],
            ),
          ),
          
          
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => const EditProfile())));
                },
              ),
          ),
          const SizedBox(width: 10,),
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
          ),
          const SizedBox(height: 15,),
          Row(
            children: const[
            Text(
            'Anonymous',
            style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: textColor100
              ),
              ),
              SizedBox(width: 3,),
              SizedBox(
              height: 14,
              width: 14,
              child: ImageIcon(AssetImage('assets/images/Vector.png'),
              color: primary100,
              )
              ),
            ],
          ),
          const SizedBox(height: 5,),
          const Text(
            'Once upon a time, i downloaded this app.',
            style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: textColor100,
              height: 1.5,
              ),
              ),
          const SizedBox(height: 15,),
          Row(
            children:  [
              const SizedBox(
                height: 13,
                width: 10,
                child: ImageIcon(AssetImage('assets/images/user.png'),
                color: textColor100,
                ),
              ),
               const SizedBox(width: 6,),
              const Text(
                '0 Followers',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: textColor100
                ),
                ),
              const SizedBox(width: 15,),
              SizedBox(
                height: 14,
                width: 14,
                child: Image.asset('assets/images/post.png'),
              ),
               const SizedBox(width: 6,),
              const Text(
                '0 post',
                style: TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: textColor100
                ),
                ),
            ],
          ),
          const SizedBox(height: 7,),
          const Divider(color: textColor10,),
          SizedBox(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120,),
                SizedBox(
                  height: 110,
                  width: 110,
                  child: Image.asset('assets/images/no.png',)),
                  const SizedBox(height: 7,),
                  const Text(
                  'No post yet',
                  style: TextStyle(
                    fontFamily: 'Mabry-Pro',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textColor100
                  ),
                    )
              ],
            ),
          ),
          )
          ],
          ),
        ),
      ),
    );
  }
}
