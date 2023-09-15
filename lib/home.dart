// ignore_for_file: unused_local_variable

import "package:firebase_analytics/firebase_analytics.dart";
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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  _asyncMethod() async {
    await FirebaseAnalytics.instance.logEvent(
      name: "page_opened",
      parameters: {
        "full_text": "test",
      },
    );
  }

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
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          children: [
            GlassButton(
              text: "Credits",
              onClickScreen: Credits(),
            ),
          ],
        ),
      ),
    );
  }
}
