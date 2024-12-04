import 'package:crypto_currencies_list_app/repositories/crypto_coins_repositories/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  CryptoCoin? coin;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is CryptoCoin, 'You must provide String args');
    coin = args as CryptoCoin;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Tooltip(
            message: 'Назад',
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white70,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        title: Text(
          '${coin?.name}',
          style: theme.textTheme.bodyMedium,
        ),
        centerTitle: true,
      ),
    );
  }
}
