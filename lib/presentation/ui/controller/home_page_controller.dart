import 'package:get/get.dart';

class HomePageController extends GetxController {
  var displayText = "".obs;
  final String fullText = "Flutter Developer | Android | ML Enthusiast";
  int index = 0;

  void startTyping() {
    Future.doWhile(() async {
      await Future.delayed(const Duration(milliseconds: 50));
      if (index < fullText.length) {
        displayText.value += fullText[index];
        index++;
        return true; // continue
      } else {
        return false; // stop
      }
    });
  }
}