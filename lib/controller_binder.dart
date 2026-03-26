import 'package:get/get.dart';

import 'presentation/ui/controller/home_page_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(HomePageController());
  }

}