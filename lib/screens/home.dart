import 'package:flutter/material.dart';
import 'package:ui_design/screens/add_info.dart';
import 'package:ui_design/screens/add_info_last.dart';
import 'package:ui_design/screens/catalouge.dart';
// import 'package:ui_design/screens/dk_premium';
import 'package:ui_design/screens/dk_premium.dart';
import 'package:ui_design/screens/orders.dart';
import 'package:ui_design/screens/payment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentIndex = 1;
  final Screen = [
    add_info(),
    Orders(),
    catalouge(),
    Payment(),
    //dk_premium(),
    FourthUi(),
    add_info_last(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     leading: Icon(Icons.arrow_back),
      //   title: Text('Manage Store'),
      //   centerTitle: true,
      // ),
      body: Screen[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap:(index) => setState(()=> CurrentIndex = index),
        currentIndex: CurrentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home', backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_outlined), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_line_chart_outlined), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'Add info'),
        ],
      ),
    );
  }
}
