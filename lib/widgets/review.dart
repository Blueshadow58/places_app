import 'package:flutter/material.dart';
import 'rating.dart';

@immutable
class Review extends StatelessWidget {
  final String pathImage;
  final double stars;
  final String userName;
  final String comment;
  final int reviewCount;
  final int photoCount;
  const Review(this.pathImage, this.userName, this.comment, this.stars,
      this.reviewCount, this.photoCount,
      {super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width * 0.65;

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage),
        ),
      ),
    );

    final userDetail = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Row(
            children: [
              Text(
                "$reviewCount reviews",
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 13.0,
                  color: Color(0xFFa3a5a7),
                ),
              ),
              Text(
                " $photoCount photos",
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 13.0,
                  color: Color(0xFFa3a5a7),
                ),
              ),
              Rating(stars, false),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 12.0),
            width: deviceWidth,
            child: Text(
              comment,
              style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                fontWeight: FontWeight.w900,
                // brake text
                // overflow: TextOverflow.visible,
              ),
            ),
          ),
        ],
      ),
    );

    return Row(
      children: [photo, userDetail],
    );
  }
}
