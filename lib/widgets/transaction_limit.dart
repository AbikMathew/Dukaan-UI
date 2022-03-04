import 'package:flutter/material.dart';

class transaction_limit extends StatelessWidget {
  const transaction_limit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction Limit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'A free limit upto which you will recieve the online payments directly in your bank',
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: LinearProgressIndicator(
                        value: 0.3,
                      ),
                    ),
                    Text(
                      '36,668 left out of ₹50,000',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {}, child: Text('Increase limit'))
                  ],
                ),
              ),
            );
  }
}