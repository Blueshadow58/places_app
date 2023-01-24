import 'package:flutter/material.dart';
import '../../widgets/gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack('Bienvenido'),
        CardImageList(),
      ],
    );
  }
}
