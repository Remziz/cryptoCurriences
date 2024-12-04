import 'package:crypto_currencies_list_app/features/bloc/crypto_list_bloc.dart';
import 'package:crypto_currencies_list_app/features/crypto_coin/abstract_coins_repository.dart';
import 'package:crypto_currencies_list_app/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  final _cryptoListBloc = CryptoListBloc(
    GetIt.I<AbstractCoinsRepository>(),
  );

  @override
  void initState() {
    _cryptoListBloc.add(LoadCryptoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Crypto Currencies List'),
          elevation: 0,
          centerTitle: true,
        ),
        body: BlocBuilder<CryptoListBloc, CryptoListState>(
          bloc: _cryptoListBloc,
          builder: (context, state) {
            if (state is CryptoListLoaded) {
              return ListView.separated(
                itemCount: state.coinsList.length,
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, i) {
                  final coin = state.coinsList[i];
                  return CryptoCoinTile(coin: coin);
                },
              );
            }
            if (state is CryptoListLoadingFailure) {
              return Center(
                child: Text(
                  'Please try again later',
                  style: theme.textTheme.labelSmall?.copyWith(fontSize: 16),
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}
