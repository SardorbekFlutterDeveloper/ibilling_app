import 'package:flutter/material.dart';

class circleAvatar {
  static CircleAvatar circleAvatarim(double radiuss) => CircleAvatar(
        radius: radiuss,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFF00FFC2),
                Color(0xFF0500FF),
                Color(0xFFFFC700),
                Color(0xFFAD00FF),
                Color(0xff00ff94),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      );
}
