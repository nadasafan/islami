

import 'package:flutter/material.dart';

// Define getFullPathImage function if not imported
String getFullPathImage(String imageName) {
  return 'assets/images/$imageName'; // Adjust the path as necessary
}

class DefaultScreen extends StatelessWidget {
  final Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(getFullPathImage("main_background.jpg")),
        body,
      ],
    ); // Stack
  }
}
