import 'package:flutter/material.dart';

class product_catalouge extends StatefulWidget {
  product_catalouge({required this.product_name, required this.cost, required this.image_name});

  String product_name;
  String cost;
  String image_name;

  @override
  State<product_catalouge> createState() => _product_catalougeState();
}

class _product_catalougeState extends State<product_catalouge> {
  @override
  Widget build(BuildContext context) {
    var isSwitched = true;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.lightBlue.shade100,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade100,
                  border:
                      Border(bottom: BorderSide(width: 1, color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                    ),
                    child: Image.asset(widget.image_name, height: 79, width: 100, fit: BoxFit.cover,)),
                  Container(
                    // color: Colors.blueAccent,
                    width: 170,
                    margin: EdgeInsets.only(top: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(height: 10),
                        Text(
                          '${widget.product_name}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text('1 piece'),
                        Text('${widget.cost}',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          'In stock',
                          style: TextStyle(color: Colors.green),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.deepOrange,
                    width: 30,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.more_vert),
                        SizedBox(height: 15),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share_outlined),
                  SizedBox(width: 10),
                  Text(
                    'Share product',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
