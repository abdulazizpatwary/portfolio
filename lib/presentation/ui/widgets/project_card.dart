import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.p,
  });

  final Map<dynamic, dynamic> p;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: GestureDetector(
        onTap: () => launchUrl(Uri.parse(p['link'])),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Text(p['title'],
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text(p['desc']),
            ],
          ),
        ),
      ),
    );
  }
}