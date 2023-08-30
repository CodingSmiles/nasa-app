import 'dart:math';

import 'package:flutter/material.dart';

// create a stateless widget with a build method that returns a card with glassmorphism effect and rounded corners with one title
class GlassButton extends StatelessWidget {
  List<Color> selectColor() {
    var rng = Random();
    var colors = [
      [
        const Color.fromRGBO(65, 151, 211, 1),
        const Color.fromRGBO(255, 255, 255, 1)
      ],
      [
        const Color.fromRGBO(214, 32, 73, 0.6),
        const Color.fromRGBO(255, 255, 255, 1),
      ],
      [
        const Color.fromRGBO(68, 112, 48, 1.0),
        const Color.fromRGBO(255, 255, 255, 1),
      ],
      [
        const Color.fromRGBO(255, 181, 50, 0.7),
        const Color.fromRGBO(0, 0, 0, 1)
      ],

      [
        const Color.fromRGBO(105, 3, 34, 0.5),
        const Color.fromRGBO(255, 255, 255, 1),
      ],
    ];
    return colors[rng.nextInt(colors.length)];
  }

  final String text;
  final Widget m1;

  const GlassButton(this.text, this.m1, {super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    final List<Color> colorS = selectColor();
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
          color: colorS[0],
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
                      color: colorS[1],
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
