import 'package:crypto_currencies_list_app/features/crypto_coin/view/view.dart';
import 'package:crypto_currencies_list_app/features/crypto_list/view/crypto_list_screen.dart';
import 'package:crypto_currencies_list_app/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CryptoCurrenciesList',
        theme: darkTheme,
        routes: {
          '/': (context) => const CryptoListScreen(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == '/coin') {
            return CupertinoPageRoute(
              builder: (context) => const CryptoCoinScreen(),
              settings: settings,
            );
          }
          return null;
        });
  }
}
