import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating(this.stars, this.margin, {super.key});
  final double stars;
  final bool margin;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height * 0.42;
    // if margin is true, add margin to the icon else don't add margin
    final addMargin =
        margin ? EdgeInsets.only(top: deviceHeight, right: 3.0) : null;
    //reduce the size of the icon by 20% if margin is false
    final iconSize = margin ? 25.0 : 20.0;

    final star = Container(
      margin: addMargin,
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: iconSize,
      ),
    );
    final starHalf = Container(
      margin: addMargin,
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
        size: iconSize,
      ),
    );
    final starVoid = Container(
      margin: addMargin,
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
        size: iconSize,
      ),
    );
    return Row(
      children: [
        // return start, star_half or star_void depending on the value of stars
        stars >= 1 ? star : (stars >= 0.5 ? starHalf : starVoid),
        stars >= 2 ? star : (stars >= 1.5 ? starHalf : starVoid),
        stars >= 3 ? star : (stars >= 2.5 ? starHalf : starVoid),
        stars >= 4 ? star : (stars >= 3.5 ? starHalf : starVoid),
        stars >= 5 ? star : (stars >= 4.5 ? starHalf : starVoid),
      ],
    );
  }
}
