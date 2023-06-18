import 'package:dio/dio.dart';
import 'package:first_project/repositories/models/crypto_coin.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        "https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,EXB,BBCC,LNK,SKR,DYNO,RELVT,FLM,IPDN,OCTI,COSHI,PUSSY&tsyms=USD,EUR");
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data["RAW"] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)["USD"] as Map<String, dynamic>;
      final price = usdData["PRICE"];
      final imageUrl = usdData["IMAGEURL"];
      return CryptoCoin(
          name: e.key,
          priceUSD: price,
          imageUrl: 'https://www.cryptocompare.com/${imageUrl}');
    }).toList();
    return cryptoCoinsList;
  }
}
