import 'package:flutter/material.dart';
import 'package:ui_design/widgets/list1_addinLast.dart';
import 'package:ui_design/widgets/list2_addLast.dart';

class add_info_last extends StatelessWidget {
  const add_info_last({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Additional Information'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          list1_addInLast(
              leading_icon: Icons.share,
              title: 'Share Dukaan App',
              trailing_icon: Icons.arrow_forward),
          list1_addInLast(
              leading_icon: Icons.language,
              title: 'Change Language',
              trailing_icon: Icons.arrow_forward),
          list2_addInLast(
              leading_icon: Icons.chat, title: 'Whatsap Chat Support'),
          list1_addInLast(leading_icon: Icons.lock, title: 'Privacy Policy'),
          list1_addInLast(leading_icon: Icons.star, title: 'Rate Us'),
          list1_addInLast(leading_icon: Icons.logout, title: 'Sign Out'),
        ],
      ),
    );
  }
}
