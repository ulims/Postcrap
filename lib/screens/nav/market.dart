import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:postcrap/screens/status/apecoin_status.dart';
import 'package:postcrap/screens/status/axie_status.dart';
import 'package:postcrap/screens/status/bitcoin_status.dart';
import 'package:postcrap/screens/status/near_status.dart';
import 'package:postcrap/screens/status/polygon_status.dart';
import 'package:postcrap/screens/status/ripple_status.dart';
import 'package:postcrap/screens/status/tether_status.dart';
import 'package:postcrap/screens/status/tron_status.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:postcrap/widget/marketlist.dart';


class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
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
          padding: EdgeInsets.only(right: 20, top: 10),
          child: Text('Market', 
        style: TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 18,
          fontWeight: FontWeight.w900
          ),),
        ),
        ),)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: SizedBox(
              height: 90,
              child: Container(
                height: 80,
                decoration: const BoxDecoration(
                boxShadow: [
                BoxShadow(
                offset: Offset(0, 0.4,),
                blurRadius: 0,
                color: textColor10 
                  )
                ],
                color: background
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                        onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const BitcoinStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/status A.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Bitcoin',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      GestureDetector(
                         onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const TetherStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/status B.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Tether',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      GestureDetector(
                         onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const TronStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/status C.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Tron',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      GestureDetector(
                         onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const PolygonStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/status D.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Polygon',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      GestureDetector(
                      onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const NearStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/near.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Near Pro..',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      GestureDetector(
                      onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const RippleStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/status F.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Ripple',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      GestureDetector(
                      onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const ApecoinStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/status G.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Apecoin',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      GestureDetector(
                       onTap:() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                            (context) => const AxieStatus())));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 50, width: 50, child: Image.asset('assets/images/status I.png'),),
                            const SizedBox(height: 2.5,),
                            const Text(
                            'Axie Infinity',
                            style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400
                            ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 22,),
                      
                    ],
                  ),
                ),
              ),
            ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Marketlist(),
            ),
            const SizedBox(height: 20,),
            ],
            ),
        ),
      )
    );
  }
}
