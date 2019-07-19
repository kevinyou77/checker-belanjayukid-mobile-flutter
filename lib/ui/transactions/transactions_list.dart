import 'package:belanjayuk_mobile_flutter/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsList extends StatelessWidget {
  final List<String> items = ["Items", "Two", "Three", "1", "xcertif", "adsf", "abcd", "efghijkl", "four", "five"];

  TransactionsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: BlocListener(
        bloc: BlocProvider.of<TransactionsListBloc>(context),
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
    return Card(child: _listViewItemContent(context, index));
  }

  Widget _listViewItemContent(BuildContext context, int index) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      title: Text("Invoice"),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "INV-20190202-1",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.blueAccent,
                     fontSize: 18,
                    ),
                ),
                Text(
                  "21 June 2019 13:47",
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Payment method: Cash",
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                )
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
        Navigator.pushNamed(context, '/transaction_detail');
      },
    );
  }
}
