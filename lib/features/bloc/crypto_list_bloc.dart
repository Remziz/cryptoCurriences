import 'package:crypto_currencies_list_app/features/crypto_coin/abstract_coins_repository.dart';
import 'package:crypto_currencies_list_app/repositories/crypto_coins_repositories/models/crypto_coin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'crypto_list_events.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvents, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super(CryptoListBlocInitial()) {
    on<LoadCryptoList>((event, emit) async {
      try {
        final coinsList = await coinsRepository.getCoinsList();
        emit(CryptoListLoaded(coinsList: coinsList));
      } catch (e) {
        emit(CryptoListLoadingFailure(exception: e));
      }
    });
  }

  final AbstractCoinsRepository coinsRepository;
}
