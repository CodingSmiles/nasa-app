import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.name, required this.desc, required this.img,});

  final String name;
  final String desc;
  final ImageProvider img;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; // get screen size
    final double width = size.width; // get screen width
    final double height = size.height; // get screen height
    final double hpw2 = (height + width) / 200;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
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
                      radius: hpw2 * 5.5,
                      backgroundImage: img,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: hpw2 * 4.8,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: hpw2 * 3.2,
              ),
              Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: hpw2 * 2.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
