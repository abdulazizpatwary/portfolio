import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/presentation/ui/controller/home_page_controller.dart';

import '../widgets/about.dart';
import '../widgets/contact_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/project_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

  late AnimationController _controller;

  final HomePageController _homePageController = Get.find<HomePageController>();


  @override
  void initState() {
    super.initState();

    // Typing animation
     _homePageController.startTyping();


    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller.forward();
  }

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1));
  }

  final projects = [
    {
      "title": "TaskManager",
      "desc": "Flutter app to manage tasks efficiently",
      "link": "https://github.com/abdulazizpatwary/Task-Manager-App--Getx"
    },
    {
      "title": "ArtConnect",
      "desc": "Social media app with chat system",
      "link": "https://github.com/abdulazizpatwary/ArtConnect"
    },
    {
      "title": "Hepatitis ML",
      "desc": "GNN disease prediction system",
      "link": "https://github.com/abdulazizpatwary/HCV_Detection-Project-using-ML"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text("Aziz"),
        //centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          nav("About", aboutKey),
          nav("Projects", projectKey),
          nav("Contact", contactKey),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(controller: _controller, homePageController: _homePageController),
            section(aboutKey, About()),
            section(projectKey, projectsUI()),
            section(contactKey, ContactWidget()),
          ],
        ),
      ),
    );
  }

  Widget nav(String text, GlobalKey key) {
    return TextButton(
        onPressed: () => scrollTo(key),
        child: Text(text, style: const TextStyle(color: Colors.white)));
  }

  Widget section(GlobalKey key, Widget child) {
    return Container(
      key: key,
      padding: const EdgeInsets.all(60),
      child: child,
    );
  }

  Widget projectsUI() {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: projects.map((p) => ProjectCardWidget(p: p)).toList(),
    );
  }
}







