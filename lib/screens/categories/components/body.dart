import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_book_store_app/screens/home/components/horizontal_listview.dart';
import 'package:flutter_book_store_app/screens/home/components/more_btn_with_custom_title.dart';
import 'package:flutter_book_store_app/screens/home/components/recomended_authors.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            MoreBtnWithCustomTitle(title: 'A', moreBtn: 'More', press: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecomendedAuthors(
                      author: 'deneme', image: 'assets/images/1984.jpeg'),
                  RecomendedAuthors(
                      author: 'deneme', image: 'assets/images/1984.jpeg'),
                  RecomendedAuthors(
                      author: 'deneme', image: 'assets/images/1984.jpeg'),
                  RecomendedAuthors(
                      author: 'deneme', image: 'assets/images/1984.jpeg'),
                ],
              ),
            ),
          ],
        ),
        MoreBtnWithCustomTitle(title: 'B', moreBtn: 'More', press: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecomendedAuthors(
                  author: 'deneme', image: 'assets/images/1984.jpeg'),
              RecomendedAuthors(
                  author: 'deneme', image: 'assets/images/1984.jpeg'),
              RecomendedAuthors(
                  author: 'deneme', image: 'assets/images/1984.jpeg'),
              RecomendedAuthors(
                  author: 'deneme', image: 'assets/images/1984.jpeg'),
            ],
          ),
        ),
        MoreBtnWithCustomTitle(title: 'C', moreBtn: 'More', press: () {}),
        MoreBtnWithCustomTitle(title: 'D', moreBtn: 'More', press: () {}),
      ],
    );
  }
}
