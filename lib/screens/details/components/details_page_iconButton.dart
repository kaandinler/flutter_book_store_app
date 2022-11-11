import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class DetailPageIconButton extends StatelessWidget {
  const DetailPageIconButton({
    super.key,
    required this.icon,
    required this.press,
  });

  final Icon icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.23),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: IconButton(
        icon: icon,
        onPressed: press as void Function()?,
      ),
    );
  }
}
