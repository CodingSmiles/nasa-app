import 'dart:math';

import 'package:flutter/material.dart';

// create a stateless widget with a build method that returns a card with glassmorphism effect and rounded corners with one title
class GlassButton extends StatelessWidget {
  Color selectColor() {
    var rng = Random();
    var colors = [
      const Color.fromRGBO(65, 151, 211, 1),
      const Color.fromRGBO(214, 32, 73, 0.6),
      // const Color.fromRGBO(246, 162, 179, 1),
      const Color.fromRGBO(68, 112, 48, 1.0),
      // const Color.fromRGBO(248, 181, 193, 1),
      // const Color.fromRGBO(227, 245, 219, 1),
      const Color.fromRGBO(255, 181, 50, 0.7),
      const Color.fromRGBO(105, 3, 34, 0.5),
    ];
    return colors[rng.nextInt(colors.length)];
  }

  final String text;
  final Widget m1;

  const GlassButton(this.text, this.m1, {super.key});

  @override
  Widget build(BuildContext context) {
    // get screen size
    final Size size = MediaQuery.of(context).size;
    // get screen width
    final double width = size.width;
    // get screen height
    final double height = size.height;
    // get screen width divided by 100
    final double hpw2 = (height + width) / 200;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => m1,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          6.0,
          12.0,
          6.0,
          12.0,
        ),
        child: Card(
          elevation: 10,
          color: selectColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          child: Center(
            child: // custom card with glassmorphism effect and rounded corners with one title
                Padding(
              padding: EdgeInsets.all(hpw2 * 3.7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontFamily: "Inter",
                      color: Colors.white,
                      fontSize: hpw2 * 3.8,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
