import 'package:flutter/material.dart';
import 'package:indigo/pages/homepage/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      lazy: false,
      create: (context) => HomePageProvider(),
      child: Scaffold(
        key: _key,
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Icon(Icons.menu),
            );
          },
        ),
        appBar: AppBar(
          title: const Text(
            'Home',
          ),
          // automaticallyImplyLeading: false,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.indigo,
                child: const DrawerHeader(
                  child: Text(
                    'INDIGO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              ListTile(
                title: Text('Log Out'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Consumer<HomePageProvider>(
      builder: (context, provider, child) {
        if (provider.showLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: provider.productsList.length,
            itemBuilder: ((context, index) => TextButton(
                  onPressed: () {
                    provider.onItemPressed(provider.productsList[index]);
                  },
                  child: Text(provider.productsList[index].productName ?? ''),
                )),
          );
        }
      },
    );
  }
}
