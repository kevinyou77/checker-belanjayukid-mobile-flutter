import 'package:belanjayuk_mobile_flutter/bloc/bloc.dart';
import 'package:belanjayuk_mobile_flutter/ui/transactions/transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Transactions List"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BlocProvider(
              builder: (context) => TransactionsListBloc(),
              child: TransactionsList()
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => {},
          label: Text("Scan"),
        ),
      )
    );
  }
}

// BlocProvider(
          // builder: (context) => TransactionsListBloc(),
          // child: TabBarView(
          //     children: [
          //       Icon(Icons.directions_car),
          //       Icon(Icons.directions_transit),
          //       Icon(Icons.directions_bike),
          //     ],
          //   ),
