import 'package:flutter/material.dart';
import './floating_button.dart';
import './floating_info_card.dart';

class CardImage extends StatelessWidget {
  const CardImage(this.pathImage, {super.key});

  final String pathImage;

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 250.0,
      // width: 250.0,
      margin: const EdgeInsets.only(
        bottom: 80.0,
        // left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(35.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );
    return Stack(
      alignment: const Alignment(0.9, 0.7),
      children: [
        card,
        const FloatingInfoCard(),
      ],
    );
  }
}
