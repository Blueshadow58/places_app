import 'package:flutter/material.dart';

class ManuIcons extends StatelessWidget {
  const ManuIcons({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height * 0.25;

    return Padding(
      padding: EdgeInsets.only(top: deviceHeight, left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
            ),
            child: Icon(
              Icons.bookmark_border,
              color: Colors.blue[900],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
            ),
            child: Icon(
              Icons.collections,
              color: Colors.blue[900],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
            ),
            child: Icon(
              Icons.add,
              color: Colors.blue[900],
              size: 40.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
            ),
            child: Icon(
              Icons.local_post_office_outlined,
              color: Colors.blue[900],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
            ),
            child: Icon(
              Icons.person_outline,
              color: Colors.blue[900],
            ),
          ),
        ],
      ),
    );
  }
}
