import 'package:appwrite_project/app/data/dummy.dart';
import 'package:appwrite_project/utils/geo_location.dart';
import 'package:get/get.dart';
import "package:collection/collection.dart";

class LocationController extends GetxController {
  static LocationController get to => Get.find();
  RxList<String>? states = <String>[].obs;
  RxList<Map>? cities = <Map>[].obs;
  Rx<CityModel> cityModel = CityModel().obs;

  @override
  void onInit() async {
    super.onInit();
    await getStates();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  Future<void> getStates() async {
    try {
      var data = DummyData.locations();
      var newMap = groupBy(data, (Map obj) => obj['state']);

      states!.clear();
      newMap.forEach((key, value) {
        states!.add(key);
      });
    } catch (e) {
      throw e;
    }
  }

  Future<void> getCities({required String state}) async {
    try {
      var data = DummyData.locations() as List;
      var newMap = data.where((element) => element['state'] == state).toList();

      cities!.clear();
      newMap.forEach((value) {
        cities!.addAll([value]);
      });
    } catch (e) {
      throw e;
    }
  }

  setCity({required String city, required String state}) {
    cityModel.value.city = city;
    cityModel.value.state = state;
    cityModel.refresh();
  }
}
