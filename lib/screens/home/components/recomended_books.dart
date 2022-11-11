import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class RecomendedBook extends StatelessWidget {
  const RecomendedBook({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.press,
  }) : super(key: key);

  final String image;
  final String title;
  final String author;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.23),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image(
            alignment: Alignment.topCenter,
            image: AssetImage('$image'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
            semanticLabel: 'Book Image',
          ),
          GestureDetector(
            onTap: press as void Function()?,
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
                    Expanded(
                      child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: <TextSpan>[
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
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
