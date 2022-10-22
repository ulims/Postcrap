import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/services/auth.dart';
import 'package:postcrap/shared/constants.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 55,width: 55, child: Image.asset('assets/images/profile_pics.png')),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          const Text('Anonymous',
          style: TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: textColor100
          ),
          ),
          const SizedBox(width: 5,),
          SizedBox(height: 13,width: 13, child: Image.asset('assets/images/Vector.png'))
          ],
          ),
          const SizedBox(height: 4,),
          const Text('View user profile', style: 
          TextStyle(fontFamily: 'Mabry-Pro', fontSize: 14, 
          fontWeight: FontWeight.w400, color: primary100),)
          ],
          ),
          const Spacer(),
          GestureDetector(
          onTap: () async{
          await _auth.logOut();
          },
          child: Image.asset('assets/images/logout.png', height: 24,width: 22,))
          ],
          ),
          const SizedBox(height: 25,),
          const Divider(color: textColor10,),
          const SizedBox(height: 15,),
          Row(
          children:[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
          Text('Actvity', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 16, 
          fontWeight: FontWeight.w500, color: textColor100),),
          SizedBox(height: 6,),
          Text('Get  a list of all your transactions', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 13, 
          fontWeight: FontWeight.w400, color: textColor60),),
          ],
          ),
          const Spacer(),
          Container(height: 30,width: 59,decoration: 
          BoxDecoration(border: Border.all(width: 1, color: textColor3),
          borderRadius: BorderRadius.circular(5)
          ),
          child: const Center(child: Text('View',
          style: TextStyle(fontFamily: 'Mabry-Pro', fontSize: 13, color: textColor100),)),
          )
          ],
          ),
          const SizedBox(height: 36,),
           Row(
          children:[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
          Text('P2P', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 16, 
          fontWeight: FontWeight.w500, color: textColor100),),
          SizedBox(height: 6,),
          Text('Buy and Sell on peer to peer', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 13, 
          fontWeight: FontWeight.w400, color: textColor60),),
          ],
          ),
          const Spacer(),
          Container(height: 30,width: 59,decoration: 
          BoxDecoration(border: Border.all(width: 1, color: textColor3),
          borderRadius: BorderRadius.circular(5)
          ),
          child: const Center(child: Text('View',
          style: TextStyle(fontFamily: 'Mabry-Pro', fontSize: 13,color: textColor100),)),
          )
          ],
          ),
          const SizedBox(height: 15,),
          const Divider(color: textColor10,),
          const SizedBox(height: 15,),
           Row(
          children:[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
          Text('Bank Accounts', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 16, 
          fontWeight: FontWeight.w500, color: textColor100),),
          SizedBox(height: 6,),
          Text('Add bank account for p2p market', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 13, 
          fontWeight: FontWeight.w400, color: textColor60),),
          ],
          ),
          const Spacer(),
          Container(height: 30,width: 59,decoration: 
          BoxDecoration(border: Border.all(width: 1, color: textColor3),
          borderRadius: BorderRadius.circular(5)
          ),
          child: const Center(child: Text('View',
          style: TextStyle(fontFamily: 'Mabry-Pro', fontSize: 13,color: textColor100),)),
          )
          ],
          ),
          const SizedBox(height: 36,),
           Row(
          children:[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
          Text('Change password', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 16, 
          fontWeight: FontWeight.w500, color: textColor100),),
          SizedBox(height: 6,),
          Text('Make changes to your password', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 13, 
          fontWeight: FontWeight.w400, color: textColor60),),
          ],
          ),
          const Spacer(),
          Container(height: 30,width: 70,decoration: 
          BoxDecoration(border: Border.all(width: 1, color: textColor3),
          borderRadius: BorderRadius.circular(5)
          ),
          child: const Center(child: Text('Change',
          style: TextStyle(fontFamily: 'Mabry-Pro', fontSize: 13,color: textColor100),)),
          )
          ],
          ),
          const SizedBox(height: 15,),
          const Divider(color: textColor10,),
          const SizedBox(height: 15,),
           Row(
          children:[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
          Text('Report a problem', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 16, 
          fontWeight: FontWeight.w500, color: textColor100),),
          SizedBox(height: 6,),
          Text('We’ll respond directly to your mail inbox', style: TextStyle(fontFamily: 'Mabry-Pro',fontSize: 13, 
          fontWeight: FontWeight.w400, color: textColor60),),
          ],
          ),
          const Spacer(),
          Container(height: 30,width: 59,decoration: 
          BoxDecoration(border: Border.all(width: 1, color: textColor3),
          borderRadius: BorderRadius.circular(5)
          ),
          child: const Center(child: Text('View',
          style: TextStyle(fontFamily: 'Mabry-Pro', fontSize: 13,color: textColor100),)),
          )
          ],
          ),
          ],
          ),
        ),
      )
    );
  }
}
