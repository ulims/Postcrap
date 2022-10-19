import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:postcrap/models/marketModel.dart';
import 'package:postcrap/models/marketprice_model.dart';
import 'package:postcrap/shared/constants.dart';

class MarketDetails extends StatelessWidget {
  final CoinPrice coinPrice;
  final MarketModel coinlist;
  const MarketDetails({Key? key, required this.coinPrice, required this.coinlist}) : super(key: key);

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
        title: Text(coinlist.symbol, 
        style: const TextStyle(
          color: textColor100,
          fontFamily: 'Mabry-Pro',
          fontSize: 15,
          fontWeight: FontWeight.w900
          ),),
        ),)),
      body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
            height: 38,
            width: 38,
            child: Image.asset(coinlist.imageUrl),
            ),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(coinlist.name,
              style: const TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 13,
              color: textColor60,
              fontWeight: FontWeight.w400
              ),
              ),
              const SizedBox(height: 9,),
              Text(NumberFormat.simpleCurrency(locale: 'en-us').format(coinPrice.currentPrice),
              style: const TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 24,
              color: textColor100,
              fontWeight: FontWeight.w900
              ),
              ),
              const SizedBox(height: 9,),
              Text(coinPrice.priceChange24H.toDouble() < 0
              ? '${coinPrice.priceChange24H.toDouble().toStringAsFixed(2)}%'
              : '+${coinPrice.priceChange24H.toDouble().toStringAsFixed(2)}%',
              
              style:  TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 13,
              color: coinPrice.priceChange24H > 0 ? success : error,
              fontWeight: FontWeight.w400
              ),
              ),
              
            ],)
            ],),
            const SizedBox(height: 15,),
            const Divider(color: textColor10,),
            const SizedBox(height: 15,),
            DefaultTabController(
              initialIndex: 0,
              length: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                   height: 30,
                   width: 300,
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: textColor10, width: 2),
                        color: textColor100,
                      ),
                      splashBorderRadius: BorderRadius.circular(30),
                      labelColor: background,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: textColor60,
                      splashFactory: NoSplash.splashFactory,
                     //isScrollable: true,
                     labelStyle: 
                      const TextStyle(
                      fontFamily: 'Mabry-Pro',
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                      ),
                      unselectedLabelStyle: const TextStyle(
                      fontFamily: 'Mabry-Pro',
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                      ),
                      tabs: const[
                      Tab(
                      text: '1 hour', 
                      ),
                      Tab(
                      text: '1 day',
                      ),
                      Tab(
                      text: '1 month', 
                      ),
                      Tab(
                      text: '1 year',
                      ),
                    ]),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                  height: 260,
                  child: TabBarView(children: [
                  Image.asset(coinPrice.priceChange24H.toDouble() < 0 ? 'assets/images/graph A.png' 
                  : 'assets/images/graph B.png' ),
                  Image.asset(coinPrice.priceChange24H.toDouble() < 0 ? 'assets/images/graph A.png' 
                  : 'assets/images/graph B.png' ),
                  Image.asset(coinPrice.priceChange24H.toDouble() < 0 ? 'assets/images/graph A.png' 
                  : 'assets/images/graph B.png' ),
                  Image.asset(coinPrice.priceChange24H.toDouble() < 0 ? 'assets/images/graph A.png' 
                  : 'assets/images/graph B.png' ),
                  ]),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(color: textColor10,),
            const SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('ABOUT ${coinlist.name.toUpperCase()}',
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 12,
            fontWeight: FontWeight.w900,
            color: textColor100
            ),
            ),
            const SizedBox(height: 8,),
            Text(coinlist.about,
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: textColor100,
            height: 1.7
            ),
            ),
            ],
            ),
            const SizedBox(height: 10,),
            const Divider(color: textColor10,),
            const SizedBox(height: 15,),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text('MARKET STATS',
            style: TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 12,
            fontWeight: FontWeight.w900,
            color: textColor100
            ),
            ),
            const SizedBox(height: 17,),
            Row(
            children: [
            SizedBox(
            height: 15,
            width: 15,
            child: Image.asset('assets/images/market_cap.png'),
            ),
            const SizedBox(width: 8,),
            const Expanded(
              child: Text('Market cap',
              style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor100
              ),
              ),
            ),
            Text(NumberFormat.simpleCurrency(locale: 'en-us').format(coinPrice.marketCap),
              style: const TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor100
              ),
              ),
            ],
            ),
            const SizedBox(height: 18,),
            Row(
            children: [
            SizedBox(
            height: 15,
            width: 15,
            child: Image.asset('assets/images/total_volume.png'),
            ),
            const SizedBox(width: 8,),
            const Expanded(
              child: Text('Total volume',
              style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor100
              ),
              ),
            ),
            Text(coinPrice.totalVolume.toString(),
              style: const TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor100
              ),
              ),
            ],
            ),
            const SizedBox(height: 18,),
            Row(
            children: [
            SizedBox(
            height: 15,
            width: 15,
            child: Image.asset('assets/images/supply.png'),
            ),
            const SizedBox(width: 8,),
            const Expanded(
              child: Text('Circulating supply',
              style: TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor100
              ),
              ),
            ),
            Text(coinPrice.circulatingSupply.toString(),
              style: const TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor100
              ),
              ),
            ],
            ),
            ],
            )
          ]),
        ),
      ),
      )
          
    );
  }
}
