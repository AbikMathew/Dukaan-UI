
import 'package:flutter/material.dart';

class list2_addInLast extends StatefulWidget {
  const list2_addInLast({ required this.leading_icon, required this.title});

    final IconData leading_icon;
    final String? title;

  @override
  State<list2_addInLast> createState() => _list2_addInLastState();
}

class _list2_addInLastState extends State<list2_addInLast> {
    bool? _toggled=false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: true,
      onChanged: (bool value) {setState(()=> _toggled = value);},
      secondary: Icon(widget.leading_icon),
      title: Text('${widget.title}'),
    );
  }
}