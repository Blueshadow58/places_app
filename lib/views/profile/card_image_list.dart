import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: deviceHeight * 0.35),
      // height: top,
      child: ListView(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
        scrollDirection: Axis.vertical,
        children: const [
          CardImage('assets/img/beach_palm.jpg'),
          CardImage('assets/img/mountain.jpg'),
          CardImage('assets/img/mountain_stars.jpg'),
          CardImage('assets/img/river.jpg'),
          CardImage('assets/img/sunset.jpg'),
          CardImage('assets/img/beach.jpg'),
        ],
      ),
    );
  }
}
