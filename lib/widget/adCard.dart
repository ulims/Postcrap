// ignore: file_names
import 'package:flutter/material.dart';
import 'package:postcrap/models/p2p_AdModel.dart';
import 'package:postcrap/screens/transactons/sellpage.dart';
import 'package:postcrap/shared/constants.dart';

class AdCard extends StatefulWidget {
  const AdCard({Key? key}) : super(key: key);

  @override
  State<AdCard> createState() => _AdCardState();
}

class _AdCardState extends State<AdCard> {
  List<Admodel> adlist = <Admodel>[
    Admodel(
    symbol: 'BTC',
    owner: '@payflow',
    amountCoin: 0.098467,
    amountCurrency: '10,000 - 50,000',
    value: 1288899),
     Admodel(
    symbol: 'BTC',
    owner: '@payflow',
    amountCoin: 0.098467,
    amountCurrency: '60,000 - 200,000',
    value: 1288899)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: adlist.length,
      itemBuilder: ((context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 35),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            RichText(
            text: TextSpan(
            text: adlist[index].amountCoin.toString(),
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor100
            ),
            children: [
            const WidgetSpan(child: SizedBox(width: 6,)),
            TextSpan(
            text: adlist[index].symbol,
            style: const TextStyle( fontSize: 10)
            )
            ]
            ),
            ),
            const SizedBox(height: 8,),
            Text(adlist[index].owner,
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: primary100
            ),
            ),
            const SizedBox(height: 8,),
            Text(adlist[index].amountCurrency,
            style: const TextStyle(
            fontFamily: 'Mabry-Pro',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor100
            ),
            ),
            ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Text('${adlist[index].value.toString()} NGN',
          style: const TextStyle(
          fontFamily: 'Mabry-Pro',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor100
          ),
          ),
          const SizedBox(height: 18,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => SellPage(sell: adlist[index],))));
            },
            child: Container(
            height: 35,
            width: 77,
            decoration: BoxDecoration(
            color: textColor100,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1.5, color: textColor20)
            ),
            child: Center(
              child: Text('Sell ${adlist[index].symbol}',
              style: const TextStyle(
              fontFamily: 'Mabry-Pro',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: background
              ),
              ),
            ),
            ),
          )
          ],
          )
          ],
          )
        ),
      );
    }));
  }
}
