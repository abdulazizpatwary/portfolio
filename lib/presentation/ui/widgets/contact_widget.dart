import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("adnanazizmahin@gmail.com"),
        ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse("https://github.com/abdulazizpatwary"));
          },
          child: const Text("GitHub"),
        )
      ],
    );
  }
}