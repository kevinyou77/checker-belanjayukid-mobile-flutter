import 'package:belanjayuk_mobile_flutter/bloc/bloc.dart';
import 'package:belanjayuk_mobile_flutter/ui/transactions/transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search transactions",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Expanded(
              child: BlocProvider(
                builder: (context) => TransactionsListBloc(),
                child: TransactionsList()
              ),
            ),
          ],
        ),
      ),
    );
  }
}