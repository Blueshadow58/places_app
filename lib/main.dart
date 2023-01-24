import 'package:flutter/material.dart';

// import './trips.dart';
import './trips_cupertino.dart';

void main() => runApp(const MyApp());
// hide the debug banner

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TripsCupertino(),
    );
  }
}
