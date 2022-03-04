import 'package:flutter/material.dart';
import 'package:ui_design/widgets/default_method.dart';
import 'package:ui_design/widgets/transaction_limit.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                transaction_limit(),
                default_method(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
