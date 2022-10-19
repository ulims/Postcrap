import 'dart:convert';

List<CoinPrice> coinPriceFromJson(String str) =>
   List<CoinPrice>.from(json.decode(str).map((x) => CoinPrice.fromJson(x)));

String coinPriceToJson(List<CoinPrice> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class CoinPrice {
  CoinPrice({
    required this.id,
    required this.symbol,
    required this.name,
    required this.currentPrice,
    required this.priceChange24H,
    required this.marketCap,
    required this.totalVolume,
    required this.circulatingSupply
  });

  final String id;
  final String symbol;
  final String name;
  final double currentPrice;
  final double priceChange24H;
  final int marketCap;
  final double totalVolume;
  final double circulatingSupply;

  factory CoinPrice.fromJson(Map<String, dynamic> json) => CoinPrice(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        currentPrice: json["current_price"].toDouble(),
        priceChange24H: json["price_change_percentage_24h"].toDouble(),
        marketCap: json["market_cap"],
        totalVolume: json["total_volume"].toDouble(),
        circulatingSupply: json["circulating_supply"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "current_price": currentPrice,
        "price_change_percentage_24h": priceChange24H,
        "market_cap": marketCap,
        "total_volume": totalVolume,
        "circulating_supply": circulatingSupply,
      };
}
