import 'package:first_project/pages/home_page.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  final String? id;

  const SettingPage({
    Key? key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Setting'),
      ),
    );
  }
}
