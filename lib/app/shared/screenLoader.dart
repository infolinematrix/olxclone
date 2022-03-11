import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loader {
  void start() {
    if (Get.isDialogOpen == false) {
      Get.dialog(
        Center(
          child: Center(
            child: Image.asset(
              "assets/icons/dual_ball.gif",
              height: 50,
              width: 50,
            ),
          ),
        ),
        barrierColor: Colors.transparent,
      );
    }
  }

  void stop() {
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }
}
