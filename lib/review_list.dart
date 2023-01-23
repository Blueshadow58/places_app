import 'dart:math';

import 'package:flutter/material.dart';
import 'package:places_app/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    // random number generator
    final random = Random();
    final randomNumber = random.nextInt(20);
    final randomNumber2 = random.nextInt(20);
    final randomNumber3 = random.nextInt(20);
    final randomNumber4 = random.nextInt(20);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
            "https://xsgames.co/randomusers/assets/avatars/male/$randomNumber.jpg",
            "Varuna Yasas",
            "This is a very nice place to visit. I would recommend it to everyone who is looking for a nice place to visit.",
            3,
            3,
            4),
        Review(
            "https://xsgames.co/randomusers/assets/avatars/male/$randomNumber2.jpg",
            "Varuna Yasas",
            "I would recommend it to everyone who is looking for a nice place to visit.",
            3,
            3,
            4),
        Review(
            "https://xsgames.co/randomusers/assets/avatars/male/$randomNumber3.jpg",
            "Varuna Yasas",
            "I visited this place with my family and we had a great time. I would recommend it to everyone who is looking for a nice place to visit.",
            3,
            3,
            4),
        Review(
            "https://xsgames.co/randomusers/assets/avatars/male/$randomNumber4.jpg",
            "Varuna Yasas",
            "I Want to visit this place again, It is a very nice place to visit. ",
            3,
            3,
            4),
      ],
    );
  }
}
