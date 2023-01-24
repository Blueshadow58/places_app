import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Floating button pressed'),
          ),
        );
      },
      backgroundColor: Colors.pink,
      mini: true,
      tooltip: 'Floating button',
      child: const Icon(Icons.favorite_border),
    );
  }
}
