import 'package:flutter/material.dart';

@immutable
class UserImgInfo extends StatelessWidget {
  final String pathImage;
  final String userName;
  final String userEmail;

  const UserImgInfo(this.pathImage, this.userName, this.userEmail, {super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width * 0.65;

    final photo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage),
        ),
      ),
    );

    final userDetail = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            userEmail,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            ),
          ),
        ],
      ),
    );

    return Padding(
      padding: EdgeInsets.only(top: deviceWidth / 2.5),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [photo, userDetail],
          ),
        ],
      ),
    );
  }
}
