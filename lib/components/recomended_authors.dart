import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class RecomendedAuthors extends StatelessWidget {
  const RecomendedAuthors({
    Key? key,
    required this.author,
    required this.image,
  }) : super(key: key);

  final String author;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('$image'),
              ),
              Text('$author',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
