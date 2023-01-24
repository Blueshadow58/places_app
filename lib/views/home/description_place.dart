import 'package:flutter/material.dart';
import '../../widgets/rating.dart';
import '../../widgets/button_purple.dart';

// create a class that extends the StatelessWidget
// and override the build method
@immutable
class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {super.key});
  final String namePlace;
  final String descriptionPlace;
  final double stars;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height * 0.41;
    final titleStars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: deviceHeight, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Rating(stars, true),
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.w300,
        ),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        const ButtonPurple("Navigate"),
      ],
    );
  }
}
