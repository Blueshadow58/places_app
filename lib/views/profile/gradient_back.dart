import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;

  const GradientBack(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height * 0.45;

    return Container(
      height: deviceHeight,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      alignment: const Alignment(-0.8, -0.7),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(
              // config setting icon
              Icons.settings,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
