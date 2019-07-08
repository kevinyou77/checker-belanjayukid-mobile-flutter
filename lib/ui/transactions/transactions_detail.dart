import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction Detail"),
      ),
      body: Container(
        child: Text(
          "Hehe",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}