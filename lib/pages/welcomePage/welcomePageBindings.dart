import 'package:caranga_app/consts/consts.dart';
import 'package:caranga_app/pages/welcomePage/welcomePageController.dart';
import 'package:get/get.dart';

class WelcomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(WelcomePageController());
    // TODO: implement dependencies
  }
}
