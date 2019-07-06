import 'package:belanjayuk_mobile_flutter/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transactions"),
      ),
      body: BlocProvider(
        builder: (context) => TransactionsBloc(),
        child: Transactions(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {},
        label: Text("Scan"),
      ),
    );
  }
}

class Transactions extends StatelessWidget {
  final List<String> items = ["Items", "Two", "Three"];

  Transactions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: BlocListener(
        bloc: BlocProvider.of<TransactionsBloc>(context),
        listener: (context, state) {},
        child: _listView(),
      )
    );
  }

  Widget _listView() {
    return ListView.builder(
      itemCount: items.length, // TODO: Item count
      itemBuilder: (context, index) => _listViewItem(context, index),
    );
  }

  Widget _listViewItem(BuildContext context, int index) {
    return Card(child: _listViewItemContent(index));
  }

  Widget _listViewItemContent(int index) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      title: Text("Invoice"),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("INV-20190202-1"),
                Text("21 June 2019 13:47"),
                Text("Payment method: Cash")
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("More >"),
            ],
          ),
        ],
      ),
      onTap: () {
        print("Hello");
      },
    );
  }
}
