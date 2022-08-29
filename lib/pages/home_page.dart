import 'package:first_project/base/routes.dart';
import 'package:first_project/pages/settings_page.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'headerTitle',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        height: 400,
        width: 400,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.products,
                  );
                },
                child: const Text('hello'),
              ),
            ),
            const Positioned(
              child: Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return MyBoxWidget();
  }
}

class MyBoxWidget extends StatefulWidget {
  const MyBoxWidget({Key? key}) : super(key: key);

  @override
  State<MyBoxWidget> createState() => _MyBoxWidgetState();
}

class _MyBoxWidgetState extends State<MyBoxWidget> {
  Color boxColor = Colors.red;
  double boxHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
