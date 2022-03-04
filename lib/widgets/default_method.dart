// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_design/widgets/payment_order.dart';

class default_method extends StatelessWidget {
  const default_method({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  children: [
                    Text(
                      'Default Method',
                      style: TextStyle(fontSize: 15),
                    ),
                    Expanded(child: SizedBox()),
                    Text('Online Payments',
                        style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Payment Profile',
                    style: TextStyle(fontSize: 15),
                  ),
                  Expanded(child: SizedBox()),
                  Text('Bank Account', style: TextStyle(color: Colors.grey)),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Row(
            children: [
              Text(
                'Payments Overview',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Expanded(child: SizedBox()),
              Text('Life Time', style: TextStyle(color: Colors.grey)),
              Icon(
                Icons.arrow_downward,
                color: Colors.grey,
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
              height: 90,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount on Hold',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '₹0',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
              height: 90,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount Recieved',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '₹14,889',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Text(
          'Transactions',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ChoiceChip(
              label: Text("Pay-Out"),
              selected: false,
              onSelected: (bool value) {},
            ),
            ChoiceChip(
              label: Text("On Hold"),
              selected: true,
              onSelected: (bool value) {},
              selectedColor: Colors.blue,
            ),
            ChoiceChip(
              label: Text("Orders"),
              selected: false,
              onSelected: (bool value) {},
            ),
           
          ],
        ),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       payment_order(),
       
       
      ],
    );
  }
}
