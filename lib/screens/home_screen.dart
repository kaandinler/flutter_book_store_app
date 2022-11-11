import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/screens/home/components/body.dart';
import 'package:flutter_book_store_app/screens/home/components/bottom_navbar.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      drawer: BuildDrawer(),
      bottomNavigationBar: MyBottomNavBar(),
      body: Body(),
    );
  }

  Drawer BuildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            duration: Duration(seconds: 1),
            curve: Curves.bounceIn,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Text(
              'Book Store',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.list_rounded),
            title: Text('Shopping List'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
    );
  }
}
