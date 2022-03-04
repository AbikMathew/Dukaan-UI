import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class custom_grid7 extends StatelessWidget {
  const custom_grid7(
      {required this.icon_color,
      required this.icon_name,
      required this.icon_text});

  final Color? icon_color;
  final String? icon_text;
  final IconData? icon_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: icon_color,
            ),
            margin: EdgeInsets.fromLTRB(10, 13, 10, 9),
            child: Icon(
              icon_name,
              color: Colors.white,
              size: 36,
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                '$icon_text',
                style: GoogleFonts.openSans(
                  textStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 7,
            child: Container(
              height: 13,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.green.shade400,
              ),
              child: Text('New',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2)),
            ),
          )
        ],
      ),
    );
  }
}
