import 'package:first_project/repositories/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinTitle extends StatelessWidget {
  const CryptoCoinTitle({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CryptoCoin coin;

  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: Image.network(coin.imageUrl),
      title: Text(coin.name, style: theme.textTheme.bodyMedium),
      subtitle: Text('${coin.priceUSD} \$', style: theme.textTheme.labelSmall),
      onTap: () {
        Navigator.of(context).pushNamed("/coin");
      },
    );
  }
}
