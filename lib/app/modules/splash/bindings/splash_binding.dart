import 'package:get/get.dart';

import '../../location/controllers/location_controller.dart';
import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
    Get.put<LocationController>(LocationController(), permanent: true);
  }
}
