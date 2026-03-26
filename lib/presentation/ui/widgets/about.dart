import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "I build modern apps using Flutter & Android and work on ML systems.",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18),
    );
  }
}