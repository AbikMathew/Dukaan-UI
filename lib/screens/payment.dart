import 'package:flutter/material.dart';
import 'package:ui_design/widgets/bold_head.dart';
import 'package:ui_design/widgets/bold_text.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #23423888'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('May 31, 05:42 PM'),
                  Expanded(child: SizedBox()),
                  Icon(Icons.circle, color: Colors.blue),
                  Text('Delivered')
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
                child: SizedBox(
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.grey.shade300)),
                    height: 1,
                    width: MediaQuery.of(context).size.width),
              ),
              Row(
                children: [
                  Text('1 ITEM', style: TextStyle(color: Colors.grey)),
                  Expanded(child: SizedBox()),
                  Icon(Icons.receipt, color: Colors.blue),
                  Text(
                    'RECEIPT',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: Row(
                  children: [
                    Container(
                        height: 76,
                        width: 70,
                        child: Image.asset(
                          'assets/unsplash1.jpg',
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Explore | Men | Navy Blue',
                                style: TextStyle(fontSize: 16)),
                            Text('1 piece'),
                            Text('Size: XL',
                                style: TextStyle(color: Colors.grey)),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue)),
                                  child: Text(
                                    ' 1 ',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                Text(' X ₹799')
                              ],
                            )
                          ]),
                    ),
                    Expanded(child: SizedBox()),
                    Column(
                      children: [
                        SizedBox(
                          height: 47,
                        ),
                        Text('₹799')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Item Total'),
                        Text('Delivery'),
                        SizedBox(height: 20),
                        bold_text(text: 'Grand Total')
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('₹799'),
                        Text(
                          'FREE',
                          style: TextStyle(color: Colors.green),
                        ),
                        SizedBox(height: 20),
                        bold_text(text: '₹799')
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey.shade300, height: 20, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Customer Details',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.share, color: Colors.blue),
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        bold_text(text: 'Deepa'),
                        Text('+91-811199032')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.whatsapp,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bold_head(
                      text1: 'Address',
                      text2: 'Casilda, Kalathipady,\nKottayam'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        bold_head(text1: 'City', text2: 'Bangalore'),
                        SizedBox(width: 90),
                        bold_head(text1: 'Pincode', text2: '686010')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bold_head(text1: 'Payment', text2: 'Online'),
                      Container(
                        decoration: BoxDecoration(color: Colors.green.shade100),
                        child: Text(
                          'PAID',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(color: Colors.grey.shade300, height: 20, thickness: 1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Additional Information',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: bold_head(text1: 'State', text2: 'Kerala'),
                  ),
                  bold_head(text1: 'Email', text2: 'mathewjohn@gmail.com'),
                  SizedBox(height: 20),
                ],
              ),
              // ignore: deprecated_member_use
              FractionallySizedBox(
                widthFactor: 1,
                child: OutlineButton(
                  onPressed: () {},
                  child: Text('Share Reciept'),
                  textColor: Colors.blue,
                  borderSide: BorderSide(color: Colors.blue),
                ),
              )
            ], // Main column children
          ),
        ),
      ),
    );
  }
}
