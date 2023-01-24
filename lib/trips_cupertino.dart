import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:places_app/views/home/home_trips.dart';
import 'package:places_app/views/profile/profile_trips.dart';
import 'package:places_app/views/search/search_trips.dart';

class TripsCupertino extends StatelessWidget {
  const TripsCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => const HomeTrips(),
              );

            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => const SearchTrips(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => const ProfileTrips(),
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => const HomeTrips(),
              );
          }
        },
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.transparent,
          activeColor: Colors.blue[900],
          inactiveColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
