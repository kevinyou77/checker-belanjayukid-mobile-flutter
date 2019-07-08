import 'package:belanjayuk_mobile_flutter/bloc/bloc.dart';
import 'package:belanjayuk_mobile_flutter/ui/transactions/transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                title: new Text("Transactions"),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: new TabBar(
                  tabs: <Tab>[
                    new Tab(text: "STATISTICS"),
                    new Tab(text: "HISTORY"),
                  ],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: new TabBarView(
            children: <Widget>[
              BlocProvider(
                builder: (context) => TransactionsListBloc(),
                child: new TransactionsList()
              ),
              new TransactionsList(),
            ],
            controller: _tabController,
          ),
           
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () => {},
        //   label: Text("Scan"),
        // ),
      )
    )
  );
}
}
// TabBarView(
//           children: [
//             BlocProvider(
//               builder: (context) => TransactionsListBloc(),
//               child: TransactionsList()
//             ),
//             Icon(Icons.directions_transit),
//           ],
//         ),

// BlocProvider(
          // builder: (context) => TransactionsListBloc(),
          // child: TabBarView(
          //     children: [
          //       Icon(Icons.directions_car),
          //       Icon(Icons.directions_transit),
          //       Icon(Icons.directions_bike),
          //     ],
          //   ),
