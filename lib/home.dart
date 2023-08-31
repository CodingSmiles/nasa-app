import "package:flutter/material.dart";
import "package:nasa_app/credits.dart";
import 'package:nasa_app/widgets/glass_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meaningless Dedication"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          child: GlassButton(
            "Credits",
            Credits(),
          ),
        ),
      ),
    );
  }
}


