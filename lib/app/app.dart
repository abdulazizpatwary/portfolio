import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller_binder.dart';
import 'package:portfolio/presentation/ui/screens/home_screen.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aziz Portfolio',
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: Colors.grey[300],    // body text
          displayColor: Colors.grey[100],
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
      ),
      home: const HomeScreen(),
    );
  }
}