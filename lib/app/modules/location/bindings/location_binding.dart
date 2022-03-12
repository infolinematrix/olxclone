import 'package:get/get.dart';

import '../controllers/location_controller.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationController>(
      () => LocationController(),
    );
    // Get.put<LocationController>(LocationController());
  }
}
