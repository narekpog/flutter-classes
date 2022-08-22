import 'package:first_project/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Title'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: const [
        MyTextWidget(),
        MyTextWidget(),
        MyTextWidget(),
        MyTextWidget(),
        MyTextWidget(),
      ],
    );
  }
}
