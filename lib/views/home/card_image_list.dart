import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
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
