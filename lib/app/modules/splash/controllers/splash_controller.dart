import 'package:appwrite_project/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../../../../utils/geo_location.dart';

class SplashController extends GetxController {
  Rx<LocationModel>? location = LocationModel().obs;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();

    LocationModel t = await GeoLocation().getGeoLocation();

    location!.value = t;
    if (location!.value.country != null) gotoHome();
  }

  @override
  void onClose() {}

  gotoHome() async {
    await Get.toNamed(Routes.HOME);
  }
}
