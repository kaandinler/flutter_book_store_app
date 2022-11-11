import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/screens/details/details_screen.dart';
import 'package:flutter_book_store_app/screens/home/components/bottom_navbar.dart';
import 'package:flutter_book_store_app/screens/home/components/more_btn_with_custom_title.dart';
import 'package:flutter_book_store_app/screens/home/components/recomended_authors.dart';
import 'package:flutter_book_store_app/screens/home/components/recomended_books.dart';
import 'package:flutter_book_store_app/screens/home/components/slider_widget.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

import 'header_with_searchbar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithSearchBar(),
          MySliderWidget(),
          MoreBtnWithCustomTitle(
            title: 'Recomended',
            press: () {},
            moreBtn: "More",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                RecomendedBook(
                  author: 'Ray Bradbury',
                  title: 'Fahrenheit 451',
                  image: 'assets/images/fahrenheit451.jpeg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendedBook(
                  author: 'George Orwell',
                  title: '1984',
                  image: 'assets/images/1984.jpeg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendedBook(
                  author: 'David Eagleman',
                  title: 'Incognito',
                  image: 'assets/images/incognito.jpeg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                RecomendedBook(
                  image: 'assets/images/yasam_3_0.jpeg',
                  title: "Yaşam 3.0",
                  author: "Max Tegmark",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          MoreBtnWithCustomTitle(
            title: 'Authors of the Week',
            press: () {},
            moreBtn: "More",
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                RecomendedAuthors(
                    author: 'George Orwell',
                    image: 'assets/images/George_Orwell.jpg'),
                RecomendedAuthors(
                    author: 'David Eagleman',
                    image: 'assets/images/david_eagleman.jpg'),
                RecomendedAuthors(
                    author: 'Ray Bradbury',
                    image: 'assets/images/Ray_Bradbury.jpg'),
              ],
            ),
          ),
          MoreBtnWithCustomTitle(
              title: 'Trending', moreBtn: 'More', press: () {}),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              RecomendedBook(
                author: 'Alexandra Bracken',
                title: 'The Darkest Minds',
                image: 'assets/images/darkest_minds.jpeg',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ),
                  );
                },
              ),
              RecomendedBook(
                author: 'Paulo Coelho',
                title: 'Veronika Ölmek İstiyor',
                image: 'assets/images/veronika.jpeg',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ),
                  );
                },
              ),
              RecomendedBook(
                author: 'Jose Saramago',
                title: 'Körlük',
                image: 'assets/images/korluk.jpeg',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ),
                  );
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
