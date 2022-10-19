import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:postcrap/models/marketModel.dart';
import 'package:postcrap/models/marketprice_model.dart';
import 'package:postcrap/screens/market_details.dart';
import 'package:postcrap/shared/constants.dart';
import 'package:http/http.dart' as http;

class Marketlist extends StatefulWidget {
  const Marketlist({Key? key}) : super(key: key);

  @override
  State<Marketlist> createState() => _MarketlistState();
}

class _MarketlistState extends State<Marketlist> {
  List<CoinPrice>? coinPrices;
  List<MarketModel> coinlist = <MarketModel>[
    MarketModel(
        imageUrl: 'assets/images/bitlist.png',
        name: 'Bitcoin',
        symbol: 'BTC',
        price: 0,
        percentageChange: 0,
        graph: 'assets/images/graph A.png',
        about: 'AXS is the governance token for the Axie Infinity game.  This is unlike traditional games where all decisions are made by the game developers. AXS holders will be able to stake their tokens to earn more AXS and even vote for governance proposals.'),
    MarketModel(
        imageUrl: 'assets/images/tlist.png',
        name: 'Tether',
        symbol: 'USDT',
        price: 0,
        percentageChange: 0,
        graph: 'assets/images/graph A.png',
        about: 'Hello bitcoin'),
    MarketModel(
        imageUrl: 'assets/images/trlist.png',
        name: 'Tron',
        symbol: 'TRX',
        price: 464,
        percentageChange: 993,
        graph: 'assets/images/graph A.png',
        about: 'Hello bitcoin'),
    MarketModel(
        imageUrl: 'assets/images/polist.png',
        name: 'Polygon',
        symbol: 'MATIC',
        price: 464,
        percentageChange: 993,
        graph: 'assets/images/graph A.png',
        about: 'Hello bitcoin'),
    MarketModel(
        imageUrl: 'assets/images/klist.png',
        name: 'Near Protocol',
        symbol: 'NEAR',
        price: 464,
        percentageChange: 993,
        graph: 'assets/images/graph A.png',
        about: 'Hello bitcoin'),
    MarketModel(
        imageUrl: 'assets/images/rlist.png',
        name: 'Ripple',
        symbol: 'XRP',
        price: 464,
        percentageChange: 993,
        graph: 'assets/images/graph A.png',
        about: 'Hello bitcoin'),
    MarketModel(
        imageUrl: 'assets/images/alist.png',
        name: 'Apecoin',
        symbol: 'APE',
        price: 464,
        percentageChange: 993,
        graph: 'assets/images/graph A.png',
        about: 'Hello bitcoin'),
    MarketModel(
        imageUrl: 'assets/images/axlist.png',
        name: 'Axie Infinity',
        symbol: 'AXS',
        price: 464,
        percentageChange: 993,
        graph: 'assets/images/graph A.png',
        about: 'Hello bitcoin'),
  ];

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    try {
      var url = Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=200&page=1&sparkline=false');
      var response = await http.get(url);
      setState(() {
        coinPrices = coinPriceFromJson(response.body);
      });
    } catch (error) {
      print('An api error has occured ${error}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: coinlist.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          mainAxisExtent: 130,
        ),
        itemBuilder: ((context, index) {
          final match = coinPrices?.where(
            (element) =>
                element.symbol.toUpperCase() ==
                coinlist[index].symbol.toUpperCase(),
          );

          final actualPrice =
              match?.isNotEmpty == true ? match!.first.currentPrice : 0;

          final percentage =
              match?.isNotEmpty == true ? match!.first.priceChange24H : 0;

          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) {
                    return MarketDetails(coinPrice: match!.first, coinlist: coinlist[index]);
                  })));
            },
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: textColor3),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 22,
                        width: 22,
                        child: Image.asset(coinlist[index].imageUrl),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        coinlist[index].name,
                        style: const TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: textColor100,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        NumberFormat.simpleCurrency(locale: 'en-us',).
                        format(actualPrice),
                        style: const TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 17,
                            color: textColor100,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        percentage.toDouble() < 0
                            ? '${percentage.toDouble().toStringAsFixed(2)}%'
                            : '+${percentage.toDouble().toStringAsFixed(2)}%',
                        style: TextStyle(
                            fontFamily: 'Mabry-Pro',
                            fontSize: 12,
                            color: percentage > 0 ? success : error,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )),
          );
        }));
  }
}
