import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class custom_grid extends StatelessWidget {
  const custom_grid(
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(7)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text('$icon_text', style: GoogleFonts.openSans(textStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600
          ),) 
          ),
          )
        ],
      ),
    );
  }
}
