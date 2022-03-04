import 'package:flutter/material.dart';
import 'package:ui_design/widgets/custom_grid.dart';
import 'package:ui_design/widgets/custom_grid7.dart';

class add_info extends StatelessWidget {
  const add_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String icon_bk_color;

    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        title: Text('Manage Store'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey.shade50,
      body: GridView.count(
        childAspectRatio: 1.37,
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 15,
        padding: EdgeInsets.all(20),
        children: [
          custom_grid(
              icon_color: Colors.orange,
              icon_name: Icons.announcement_outlined,
              icon_text: "Marketing \nDesigns"),
          custom_grid(
              icon_color: Colors.green,
              icon_name: Icons.attach_money_outlined,
              icon_text: "Online \nPayment"),
          custom_grid(
              icon_color: Colors.amber,
              icon_name: Icons.local_offer_outlined,
              icon_text: "Discount \nCoupon"),
          custom_grid(
              icon_color: Colors.cyan,
              icon_name: Icons.people_alt_outlined,
              icon_text: "My \nCustomer"),
          custom_grid(
              icon_color: Colors.grey,
              icon_name: Icons.qr_code_scanner_outlined,
              icon_text: "Store QR \nCode"),
          custom_grid(
              icon_color: Colors.purple,
              icon_name: Icons.money_sharp,
              icon_text: "Extra \ncharges"),
          custom_grid7(
              icon_color: Colors.pink,
              icon_name: Icons.stacked_line_chart_outlined,
              icon_text: "Order \nForms"),
        ],
      ),
    );
  }
}
