import 'package:flutter/material.dart';
import './floating_button.dart';

class FloatingInfoCard extends StatelessWidget {
  final String namePlace;
  final String descriptionPlace;
  final String steps;

  const FloatingInfoCard({
    Key? key,
    this.namePlace = '',
    this.descriptionPlace = '',
    this.steps = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 45.0, right: 45.0),
      // Card with rounded corners
      child: Card(
        elevation: 10.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          // Column with 3 rows
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lorem ipsum dolor sit amet',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0),
              const Text(
                // lorem x10
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ipsum dolor sit amet.',
                style: TextStyle(
                  fontSize: 13.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                'Steps: 271.727.921',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return Stack(
      alignment: const Alignment(0.5, 1.1),
      children: [
        card,
        const FloatingButton(),
      ],
    );
  }
}
