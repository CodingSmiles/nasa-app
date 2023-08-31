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
            SizedBox(
              height: 10.0
            ),
            ProfileCard(
              name: "Aadiraj Anil",
              desc: "Enthusiastic programmer who likes to work with apps and data",
              img: AssetImage("images/aadiraj.png"),
            ),
            ProfileCard(
              name: "Ayushman Kalita",
              desc: "Tech nerd with lots of skills and knowledge about rocket science",
              img: AssetImage("images/ayushman.jpeg"),
            ),
            ProfileCard(
              name: "Adarsh Dubey",
              desc: "Your perfect do-it-all skill set guy who also has humor!",
              img: AssetImage("images/adarsh.jpeg"),
            ),
            ProfileCard(
              name: "Mehul Saini",
              desc: "Enthusiastic, Ambitious and Creative guy with common sense and tennis skills",
              img: AssetImage("images/mehul.jpeg"),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
