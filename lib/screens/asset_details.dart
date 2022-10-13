import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:postcrap/models/asset_model.dart';
import 'package:postcrap/shared/activity.dart';
import 'package:postcrap/shared/constants.dart';

class AssetDetails extends StatelessWidget {
  final AssetModel asset;
  const AssetDetails({Key? key, required this.asset}) : super(key: key);

  

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
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(right: 10, left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/images/back.png')),
          ),
        ),
        title: Text(asset.name, 
        style: const TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 18,
          fontWeight: FontWeight.w900
          ),),
        ),)),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              Row(
              children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text(
                'Total Balance',
                style: TextStyle(
                color: textColor60,
                fontFamily: 'Mabry-Pro',
                fontSize: 14,
                fontWeight: FontWeight.w400
                ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text(
                    asset.value.toString(),
                    style: const TextStyle(
                    color: textColor100,
                    fontFamily: 'Mabry-Pro',
                    fontSize: 32,
                    fontWeight: FontWeight.w900
                    ),
                    ),
                const SizedBox(width: 5,),
                 Text(
                    asset.symbol,
                    style: const TextStyle(
                    color: textColor60,
                    fontFamily: 'Mabry-Pro',
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 7,),
                Text(
                    NumberFormat.simpleCurrency(
                    locale: 'en-us',
                    decimalDigits: 2
                    ).format(asset.valueUSD),
                    style: const TextStyle(
                    color: textColor100,
                    fontFamily: 'Mabry-Pro',
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                    ),
                    ),
                ],
                ),
              ),
              SizedBox(
                height: 38,
                width: 38,
                child: Image.asset(asset.imageUrl),
              )
              ],
              ),
              const SizedBox(height: 35,),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/3.72,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: textColor10)
                    ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: Center(
                      child: Column(
                        children: [
                        SizedBox(
                        height: 26,
                        width: 26,
                        child: Image.asset('assets/images/sendicon.png'),
                        ),
                      const SizedBox(height: 5),
                      const Text('Send',
                      style: TextStyle(
                      fontFamily: 'Mabry-Pro',
                      fontSize: 14,
                      color: textColor100,
                      fontWeight: FontWeight.w400
                      ),
                      )
                        ],
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(width: 16,),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/3.72,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: textColor10)
                    ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: Center(
                      child: Column(
                        children: [
                        SizedBox(
                        height: 26,
                        width: 26,
                        child: Image.asset('assets/images/receive_icons.png'),
                        ),
                      const SizedBox(height: 5,),
                      const Text('Receive',
                      style: TextStyle(
                      fontFamily: 'Mabry-Pro',
                      fontSize: 14,
                      color: textColor100,
                      fontWeight: FontWeight.w400
                      ),
                      )
                        ],
                      ),
                    ),
                  ),
                  ),
                   const SizedBox(width: 16,),
                 Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/3.72,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: textColor10)
                    ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: Center(
                      child: Column(
                        children: [
                        SizedBox(
                        height: 26,
                        width: 26,
                        child: Image.asset('assets/images/trade_icons.png'),
                        ),
                      const SizedBox(height: 5,),
                      const Text('Trade',
                      style: TextStyle(
                      fontFamily: 'Mabry-Pro',
                      fontSize: 14,
                      color: textColor100,
                      fontWeight: FontWeight.w400
                      ),
                      )
                        ],
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            const SizedBox(height: 140,),
           noActivity
            ],
          ),
        ),
    );
  }
}
