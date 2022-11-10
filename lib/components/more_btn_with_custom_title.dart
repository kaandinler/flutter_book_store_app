import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class MoreBtnWithCustomTitle extends StatelessWidget {
  const MoreBtnWithCustomTitle({
    Key? key,
    required this.title,
    required this.moreBtn,
    required this.press,
  }) : super(key: key);

  final String title;
  final String moreBtn;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          CustomTitle(
            title: "$title",
          ),
          Spacer(),
          TextButton(
            onPressed: press as void Function()?,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
            child: Text('$moreBtn', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              '$title',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
                margin: EdgeInsets.only(right: kDefaultPadding / 4),
              ))
        ],
      ),
    );
  }
}
