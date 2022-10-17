import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HorizontalListViewWidget extends StatefulWidget {
  const HorizontalListViewWidget({super.key});

  @override
  State<HorizontalListViewWidget> createState() =>
      _HorizontalListViewWidgetState();
}

class _HorizontalListViewWidgetState extends State<HorizontalListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.network(
              "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.network(
              "https://wallpaperaccess.com/full/2637581.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.network(
              "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.network(
              "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.network(
              "https://wallpaperaccess.com/full/2637581.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Image.network(
              "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
