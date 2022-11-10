import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_book_store_app/components/body.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context),
      body: const Body(),
    );
  }

  AppBar BuildAppBar(BuildContext _context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(_context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(_context).openAppDrawerTooltip,
      ),
    );
  }
}
