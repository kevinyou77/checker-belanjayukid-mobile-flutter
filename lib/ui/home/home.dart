import 'package:belanjayuk_mobile_flutter/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transactions"),),
      body: BlocProvider(
        builder: (context) => TransactionsBloc(),
        child: Transactions(),
      ),
    );
  }
}

class Transactions extends StatelessWidget {
  const Transactions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: BlocListener(
        bloc: BlocProvider.of<TransactionsBloc>(context),
        listener: (context, state) {

        },
        child: ListView(
          children: <Widget>[
            Container(
              child: const Center(
                child: Text("A"),
              )
            ),
            Container(
              child: const Center(
                child: Text("B"),
              )
            ),
            Container(
              child: const Center(
                child: Text("C"),
              )
            )
          ],
        ),
      ),
    );
  }
}