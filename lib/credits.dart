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
      body: const Center(
        child: Column(
          children: [
            ProfileCard("Aadiraj Anil"),
            ProfileCard("Ayushman Kalita"),
            ProfileCard("Adarsh Dubey"),
          ],
        ),
      ),
    );
  }
}
