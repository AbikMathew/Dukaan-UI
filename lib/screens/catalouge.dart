import 'package:flutter/material.dart';
import 'package:ui_design/widgets/product_catalouge.dart';

class catalouge extends StatelessWidget {
  const catalouge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Catalouge'),
          actions: [Icon(Icons.search)],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.abc),
              text: 'Products',
            ),
            Tab(
              icon: Icon(Icons.abc),
              text: 'Categories',
            )
          ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              product_catalouge(
                  product_name: 'Cough Potato|Women',
                  cost: '₹799',
                  image_name: 'assets/unsplash1.jpg'),
              product_catalouge(
                  product_name: 'Cough Potato|Men',
                  cost: '₹120',
                  image_name: 'assets/pic1.png'),
              product_catalouge(
                  product_name: 'Cough Potato|Women',
                  cost: '₹799',
                  image_name: 'assets/unsplash1.jpg'),
              product_catalouge(
                  product_name: 'Cough Potato|Women',
                  cost: '₹799',
                  image_name: 'assets/pic1.png'),
              product_catalouge(
                  product_name: 'Cough Potato|Women',
                  cost: '₹799',
                  image_name: 'assets/unsplash1.jpg'),
              product_catalouge(
                  product_name: 'Cough Potato|Women',
                  cost: '₹799',
                  image_name: 'assets/pic1.png'),
              product_catalouge(
                  product_name: 'Cough Potato|Women',
                  cost: '₹799',
                  image_name: 'assets/unsplash1.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
