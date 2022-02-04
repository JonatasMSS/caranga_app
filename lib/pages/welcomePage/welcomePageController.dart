import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePageController extends GetxController {
  screenSize(var context) {
    final screensize = MediaQuery.of(context).size;
    return screensize;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    print("Tamanho da tela:");
    super.onInit();
  }
}
