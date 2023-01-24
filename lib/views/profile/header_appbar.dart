import 'package:flutter/material.dart';
import './gradient_back.dart';
import './user_img_info.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack('Profile'),
        UserImgInfo(
          'https://xsgames.co/randomusers/assets/avatars/male/1.jpg',
          'Franco Gamonal',
          'gamonalfranco@gmail.com',
        )
      ],
    );
  }
}
