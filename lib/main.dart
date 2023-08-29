import "package:flutter/material.dart";
import "package:nasa_app/home.dart";

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      title: "Meaningless Dedication",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(27, 41, 68, 1),
          centerTitle: true,
          titleTextStyle: TextStyle(fontFamily: "Inter", fontSize: 20),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
