import 'package:flutter/material.dart';
import 'package:places_app/review_list.dart';
import './description_place.dart';
import './header_appbar.dart';

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
      home: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: const [
                DescriptionPlace(
                  "Bahamas",
                  3.5,
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl.",
                ),
                ReviewList(),
              ],
            ),
            const HeaderAppBar(),
            // DescriptionPlace(
            //   "Bahamas",
            //   3.5,
            //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl.",
            // ),
            // ReviewList(),
          ],
        ),

        // Column(
        //   children: [
        //     Stack(
        //       children: const [
        //         GradientBack(),
        //       ],
        //     ),
        //     const DescriptionPlace(
        //       "Bahamas",
        //       3.5,
        //       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nunc non nisl.",
        //     ),
        //     const ReviewList(),
        //   ],
        // ),
      ),
    );
  }
}
