import 'package:flutter/material.dart';
import 'package:nasa_app/credits.dart';
import 'package:nasa_app/widgets/glass_button.dart';

class HomeWindows extends StatefulWidget {
  const HomeWindows({super.key});

  @override
  State<HomeWindows> createState() => _HomeState();
}

class _HomeState extends State<HomeWindows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meaningless Dedication"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 400.0, right: 400.0),
          child: GlassButton(
            text: "Credits",
            onClickScreen: Credits(),
          ),
        ),
      ),
    );
  }
}
