import 'package:flutter/material.dart';

class bold_text extends StatelessWidget {
  String text;

  bold_text({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}
