import 'package:flutter/material.dart';
import './header_appbar.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        HeaderAppBar(),
      ],
    );
  }
}
