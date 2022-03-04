import 'package:flutter/material.dart';

class payment_order extends StatelessWidget {
  const payment_order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 60,
              color: Colors.black,
              child: Image.asset(
                'assets/unsplash1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Order #170034',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('July 12, 02:06 PM'),
            trailing: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Text(
                    '₹799',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text('Completed')
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text('₹799 deposited to: 646468888666 '),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
