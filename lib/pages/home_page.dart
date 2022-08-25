import 'package:first_project/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          60,
        ),
        child: Container(
          color: Colors.black,
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    List<String> names = [
      'asd',
      'asddd',
      '232',
      'ewq',
      'asdewqdd',
    ];

    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      children: [
        Card(
          child: IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {},
          ),
        ),
        Card(
          child: IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {},
          ),
        ),
        Card(
          child: IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {},
          ),
        ),
        Card(
          child: IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
