import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_book_store_app/screens/home/components/more_btn_with_custom_title.dart';
import 'package:flutter_book_store_app/shared/constants.dart';
import 'package:flutter_book_store_app/shared/margins.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Book Categories'),
          backgroundColor: kPrimaryColor,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CategoryOption(),
              CategoryOption(),
              CategoryOption(),
              CategoryOption(),
              CategoryOption(),
            ],
          ),
        ));
  }
}

class CategoryOption extends StatelessWidget {
  const CategoryOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -15),
                    blurRadius: 20,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              height: 100,
              width: kDefaultPadding * 8,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(80), // Image radius
                        child: Image(
                          fit: BoxFit.cover,
                          image: const AssetImage(
                              'assets/images/fahrenheit451.jpeg'),
                        ),
                      ),
                    ),
                    Spacer(),
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Computer'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
