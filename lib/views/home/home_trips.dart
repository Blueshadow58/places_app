import 'package:flutter/material.dart';
import 'package:places_app/views/home/description_place.dart';
import 'package:places_app/views/home/header_appbar.dart';
import 'package:places_app/widgets/review_list.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    const String description =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl.";
    return Stack(
      children: [
        ListView(
          children: const [
            DescriptionPlace(
              "Bahamas",
              3.5,
              description,
            ),
            ReviewList(),
          ],
        ),
        const HeaderAppBar(),
      ],
    );
  }
}
