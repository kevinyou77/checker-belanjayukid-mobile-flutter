import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  TransactionDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Transaction Detail"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: <Widget>[
                Container(
                  child: _transactionInfo(),
                ),
                Container(child: _transactionDetailList()),
              ],
            )
          ),
        ),
      bottomNavigationBar: _bottomAppBar());
  }

  Widget _bottomAppBar() {
    return BottomAppBar(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: IconButton(
            icon: Icon(Icons.save),
            onPressed: () {},
          )),
          Expanded(
              child: IconButton(
            icon: Icon(Icons.check),
            onPressed: () {},
          )),
        ],
      ),
    );
  }

  Widget _transactionInfo() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Invoice",
            ),
            Text(
              "INV-20190808-MIRX3",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text("Payment Method"), Text("Customer")],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(": Cash"),
                    Text(": Jason Wong"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _transactionDetailList() {
    return Column(
      children: <Widget>[
        _transactionDetailItem(),
        _transactionDetailItem(),
        _transactionDetailItem(),
        _transactionDetailItem(),
        _transactionDetailItem(),
        _transactionDetailItem(),
        _transactionDetailItem(),
      ],
    );
  }

  Widget _transactionDetailItem() {
    return InkWell(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              FlutterLogo(size: 60),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bear Brand",
                      style:TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      "Beras Merah",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "Rp. 750.000",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Text("7"),
              Checkbox(
                value: false,
                onChanged: (bool value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}