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
        body: CustomScrollView(
          primary: false,
          scrollDirection: Axis.vertical,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
                  CategoryGridTile(
                    category_name: 'Academic',
                    image: 'assets/images/A.jpg',
                  ),
                  CategoryGridTile(
                    category_name: 'Art',
                    image: 'assets/images/A.jpg',
                  ),
                  CategoryGridTile(
                    category_name: 'Education',
                    image: 'assets/images/E.jpg',
                  ),
                  CategoryGridTile(
                    category_name: 'Engineering',
                    image: 'assets/images/E.jpg',
                  ),
                  CategoryGridTile(
                    category_name: 'Literature',
                    image: 'assets/images/L.jpg',
                  ),
                  CategoryGridTile(
                    category_name: 'Science',
                    image: 'assets/images/S.jpg',
                  ),
                  CategoryGridTile(
                    category_name: 'Sports',
                    image: 'assets/images/S.jpg',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class CategoryGridTile extends StatelessWidget {
  const CategoryGridTile({
    super.key,
    required this.category_name,
    required this.image,
  });

  final String category_name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: Container(
          color: Colors.black54,
          alignment: Alignment.center,
          child: Text(
            '$category_name',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        child: CategoryOption(
          image: '$image',
        ));
  }
}

class CategoryOption extends StatelessWidget {
  const CategoryOption({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ));
  }
}
