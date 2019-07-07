import 'package:belanjayuk_mobile_flutter/bloc/bloc.dart';
import 'package:belanjayuk_mobile_flutter/ui/transactions/transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TransactionsList"),
      ),
      body: BlocProvider(
        builder: (context) => TransactionsListBloc(),
        child: TransactionsList(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {},
        label: Text("Scan"),
      ),
    );
  }
}
