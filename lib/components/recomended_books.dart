import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class RecomendedBook extends StatelessWidget {
  const RecomendedBook({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
  }) : super(key: key);

  final String image;
  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image(
            image: AssetImage('$image'),
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title",
                            style: TextStyle(
                                color: kTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "\n$author",
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                            )),
                      ],
                    )),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
