import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  themeChange() {
    if (isDarkMode.value == true) {
      isDarkMode.value = false;
      Get.changeTheme(ThemeData.light());
    } else {
      isDarkMode.value = true;
      Get.changeTheme(ThemeData.dark());
    }
  }
}
