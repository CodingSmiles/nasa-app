import "dart:ui";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:nasa_app/splash.dart";

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
    double appBarFSize;
    double appBarHeight;
    if (kIsWeb) {
      appBarFSize = 45;
    } else {
      appBarFSize = 25;
    }
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      title: "Meaningless Dedication",
      theme: ThemeData(
        scrollbarTheme: const ScrollbarThemeData(
          thickness: MaterialStatePropertyAll(4),
          interactive: true,
        ),
        colorScheme: const ColorScheme.dark(secondary: Colors.grey),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromRGBO(27, 41, 68, 1),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: "Inter",
            fontSize: appBarFSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
