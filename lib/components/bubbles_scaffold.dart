import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xdrive/utilities/color.dart';

class BubbleScaffold extends StatelessWidget {
  const BubbleScaffold({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
    children: [
        Positioned(
          top: -1 * size.width / 3, 
          left: 0,
          child: Container(
              decoration: BoxDecoration(color: getRandomColor().withOpacity(0.8), shape: BoxShape.circle),
              width: size.width / 1.7,
              height: size.width / 1.7
          ),
        ),
        Positioned(
          bottom: -1 * size.width / 3, 
          right: 0,
          child: Container(
              decoration: BoxDecoration(color: getRandomColor().withOpacity(0.8), shape: BoxShape.circle),
              width: size.width / 1.7,
              height: size.width / 1.7
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(color: Colors.indigo[900]?.withOpacity(0.11)), 
              child: child,
          ),
        ),
    ]
      );
  }
}
