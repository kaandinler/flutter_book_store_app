import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/screens/details/components/details_page_iconButton.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class ImageAndIconButtonsCard extends StatelessWidget {
  const ImageAndIconButtonsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                    ),
                    Spacer(),
                    DetailPageIconButton(
                      icon: Icon(Icons.favorite_border),
                      press: () {},
                    ),
                    DetailPageIconButton(
                      icon: Icon(Icons.shopping_bag_outlined),
                      press: () {},
                    ),
                    DetailPageIconButton(
                      icon: Icon(Icons.info_outline),
                      press: () {},
                    ),
                    DetailPageIconButton(
                      icon: Icon(Icons.comment_outlined),
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.33),
                  ),
                ],
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage('assets/images/fahrenheit451.jpeg'),
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
