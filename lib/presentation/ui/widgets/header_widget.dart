import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/home_page_controller.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.controller,
    required this.homePageController,
  }) ;

  final AnimationController controller;
  final HomePageController homePageController;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: controller,
      child: Container(
        height: 400,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hi, I'm Abdul Aziz Patwary",
                style: TextStyle(fontSize: 42)),
            const SizedBox(height: 10),
            Obx(()=>Text(homePageController.displayText.value,
                style: const TextStyle(color: Colors.grey)),),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse("https://www.dropbox.com/scl/fi/rhgrpqmkx5wn64zxj0v0p/abdul_aziz_patwary_cv.pdf?rlkey=uqyzzg2nuj242082gx17k9dxs&dl=1"));
              },
              child: const Text("Download CV"),
            )
          ],
        ),
      ),
    );
  }
}