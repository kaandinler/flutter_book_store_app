import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_book_store_app/shared/constants.dart';
import 'package:flutter_book_store_app/shared/margins.dart';

import 'header_with_searchbar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(),
          horizontalSpaceMedium,
        ],
      ),
    );
  }
}
