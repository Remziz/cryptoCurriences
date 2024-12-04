import 'package:crypto_currencies_list_app/repositories/crypto_coins_repositories/models/crypto_coin.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
