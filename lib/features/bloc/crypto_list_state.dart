part of 'crypto_list_bloc.dart';

class CryptoListState {}

class CryptoListBlocInitial extends CryptoListState {}

class CryptoListLoading extends CryptoListState {}

class CryptoListLoaded extends CryptoListState {
  CryptoListLoaded({
    required this.coinsList,
  });
  final List<CryptoCoin> coinsList;
}

class CryptoListLoadingFailure extends CryptoListState {
  CryptoListLoadingFailure({
    required this.exception,
  });
  final Object? exception;
}
