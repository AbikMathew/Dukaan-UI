import 'package:flutter/material.dart';
import 'package:ui_design/widgets/bold_text.dart';

class bold_head extends StatelessWidget {
  
  String text1;
  String text2;
   bold_head({ required this.text1, required this.text2 });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bold_text(text: text1),
        Text(text2)
      ],
    );
  }
}