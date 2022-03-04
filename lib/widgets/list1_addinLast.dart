import 'package:flutter/material.dart';

class list1_addInLast extends StatelessWidget {
  const list1_addInLast({ required this.leading_icon, required this.title, this.trailing_icon});

    final IconData leading_icon;
    final String? title;
    final IconData? trailing_icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading_icon),
      title: Text('$title'),
      trailing: Icon(trailing_icon),
    );
  }
}