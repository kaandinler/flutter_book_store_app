import 'package:flutter/material.dart';
import 'package:flutter_book_store_app/screens/details/components/images_and_icon_buttons_card.dart';
import 'package:flutter_book_store_app/screens/details/components/title_and_price.dart';
import 'package:flutter_book_store_app/shared/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconButtonsCard(),
          TitleAndPrice(
            price: 56,
            title: 'Fahrenheit 451',
            writer: 'Ray Bradbury',
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Buy Now', style: TextStyle(color: Colors.white)),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    textStyle: const TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child:
                    Text('Description', style: TextStyle(color: kPrimaryColor)),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
