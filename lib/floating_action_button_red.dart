import 'package:flutter/material.dart';

class FloatingActionButtonRed extends StatefulWidget {
  const FloatingActionButtonRed({super.key});

  @override
  State<FloatingActionButtonRed> createState() =>
      _FloatingActionButtonRedState();
}

class _FloatingActionButtonRedState extends State<FloatingActionButtonRed> {
  bool pressed = false;

  void onPressedFav() {
    setState(() {
      pressed = !pressed;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 1000),
        content: pressed
            ? const Text("Agregaste a tus favoritos")
            : const Text("Eliminaste de tus favoritos"),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon(
        pressed ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}
