import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;

  const ProfileCard(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0.0,
        6,
        0.0,
        2,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        elevation: hpw2 * 10,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            hpw2 * 1.5,
            hpw2 * 2.6,
            hpw2 * 1.5,
            hpw2 * 2.6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: hpw2 * 6.5,
                      backgroundColor: Colors.amber,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: hpw2 * 6,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
