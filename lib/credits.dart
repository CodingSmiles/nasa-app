import 'package:flutter/material.dart';
import 'package:nasa_app/widgets/profile_card.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Credits"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileCard(
              "Aadiraj Anil",
              "Enthusiastic programmer who likes to work with apps and data",
            ),
            ProfileCard(
              "Ayushman Kalita",
              "Tech nerd with lots of skills and knowledge about rocket science",
            ),
            ProfileCard(
              "Adarsh Dubey",
              "Your perfect do-it-all skill set guy who also has humor!",
            ),
            ProfileCard(
              "Mehul Saini",
              "Creative guy with common sense and tennis skills",
            ),
          ],
        ),
      ),
    );
  }
}
