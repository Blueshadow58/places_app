import 'package:flutter/material.dart';
import 'package:places_app/views/home/home_trips.dart';
import 'package:places_app/views/profile/profile_trips.dart';
import 'package:places_app/views/search/search_trips.dart';

class Trips extends StatefulWidget {
  const Trips({super.key});

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  var indexTap = 0;
  final List<Widget> widgetsChildren = const [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.blue[900], size: 30),
        selectedFontSize: 30,
        onTap: (int index) {
          setState(() {
            indexTap = index;
          });
        },
        currentIndex: indexTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
