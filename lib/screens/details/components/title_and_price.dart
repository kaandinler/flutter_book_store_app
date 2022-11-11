import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
    required this.title,
    required this.writer,
    required this.price,
  });

  final String title;
  final String writer;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '$title\n',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold)),
              TextSpan(
                  text: '$writer',
                  style: TextStyle(color: kTextColor.withOpacity(0.7)))
            ]),
          ),
          const Spacer(),
          Text(
            '\₺$price',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
