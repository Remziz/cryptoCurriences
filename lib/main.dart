import 'package:crypto_currencies_list_app/crypto_coins_app.dart';
import 'package:crypto_currencies_list_app/features/crypto_coin/abstract_coins_repository.dart';
import 'package:crypto_currencies_list_app/repositories/crypto_coins_repositories/crypto_coins_repository.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
      () => CryptoCoinsRepository(dio: Dio()));
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const CryptoCurrenciesListApp(),
    ),
  );
}
