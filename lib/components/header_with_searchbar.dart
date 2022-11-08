import 'package:flutter/material.dart';

import '../shared/constants.dart';
import '../shared/margins.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      child: Stack(children: [
        Container(
          padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
          child: Row(children: [
            Text(
              'Hi! Username',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Spacer(),

            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            // IconButton(
            //   icon: const Icon(Icons.notifications, color: Colors.white),
            //   onPressed: () {},
            // ),
          ]),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Expanded(
                  child: TextField(
                onChanged: (value) {},
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: kPrimaryColor,
                    ),
                    onPressed: () {},
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              )),
            ))
      ]),
    );
  }
}
