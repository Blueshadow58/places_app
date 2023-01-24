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

    // Save context of Scaffold to manipulate it
    final contextScalffold = ScaffoldMessenger.of(context);
    // Remove the current snackbar if it is showing to show the new one
    contextScalffold.removeCurrentSnackBar();

    contextScalffold.showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 1000),
        content: pressed
            ? const Text("Agregaste a tus favoritos")
            : const Text("Eliminaste de tus favoritos"),
        backgroundColor: Colors.blue[900],
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
