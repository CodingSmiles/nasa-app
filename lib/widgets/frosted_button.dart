import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedButton extends StatelessWidget {
  final double blur;
  final double opacity;
  final Widget child;

  const FrostedButton({
    super.key,
    required this.blur,
    required this.opacity,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: const Placeholder(),
    );
  }
}
