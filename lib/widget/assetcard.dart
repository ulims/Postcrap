import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:postcrap/models/asset_model.dart';
import 'package:postcrap/screens/asset_details.dart';
import 'package:postcrap/shared/constants.dart';

class AssetCard extends StatefulWidget {
  const AssetCard({Key? key}) : super(key: key);

  @override
  State<AssetCard> createState() => _AssetCardState();
}

class _AssetCardState extends State<AssetCard> {

dynamic size, height, width;

List<AssetModel> assetlist = <AssetModel>[
  AssetModel(
    imageUrl: 'assets/images/grid_bitcoin.png', 
    name: 'Bitcoin', 
    symbol: 'BTC', 
    value: 0.00, 
    valueUSD: 0.00),
  AssetModel(
    imageUrl: 'assets/images/grid_tether.png', 
    name: 'Tether', 
    symbol: 'USDT', 
    value: 0.00, 
    valueUSD: 0.00),
  AssetModel(
    imageUrl: 'assets/images/grid_tron.png', 
    name: 'Tron', 
    symbol: 'TRX', 
    value: 0.00, 
    valueUSD: 0.00),
  AssetModel(
    imageUrl: 'assets/images/grid_polygon.png', 
    name: 'Polygon', 
    symbol: 'MATIC', 
    value: 0.00, 
    valueUSD: 0.00),
  AssetModel(
    imageUrl: 'assets/images/klist.png', 
    name: 'Near Protocol', 
    symbol: 'NEAR', 
    value: 0.00, 
    valueUSD: 0.00),
  AssetModel(
    imageUrl: 'assets/images/grid_ripple.png', 
    name: 'Ripple', 
    symbol: 'XRP', 
    value: 0.00, 
    valueUSD: 0.00),
];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      removeLeft: true,
      removeRight: true,
      child: ListView.builder(
        itemCount: assetlist.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: ((context) => AssetDetails(asset: assetlist[index]))));
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 17),
            child: Container(
            color: background,
            height: 60,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 38,
                  width: 38,
                child: Image.asset(assetlist[index].imageUrl)),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(assetlist[index].name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: textColor100,
                      fontFamily: 'Mabry-Pro'
                    ),
                    ),
                    const SizedBox(height: 8,),
                    Text(assetlist[index].value.toString(),
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: textColor80,
                      fontFamily: 'Mabry-Pro'
                    ),
                    ),
                    ],
                  ),
                ),
                Text(
                NumberFormat.simpleCurrency(
                  locale: 'en-us',
                  decimalDigits: 2
                ).format(assetlist[index].valueUSD),
                style: const TextStyle(
                  fontFamily: 'Mabry-Pro',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: textColor100,
                ),
                )
              ],
            ),
            ),
          ),
        );
      })),
    );
  }
}