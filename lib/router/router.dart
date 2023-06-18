import 'package:first_project/features/crypto_coin/view/crypto_coin_screen.dart';
import 'package:first_project/features/crypto_list/crypto_list.dart';

final routes = {
  "/": (context) => const CryptoListScreen(
        title: 'Crypto List',
      ),
  "/coin": (context) => const CryptoCoinScreen(title: "Crypto"),
};
