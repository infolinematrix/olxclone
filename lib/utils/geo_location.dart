import 'package:appwrite_project/app/modules/location/controllers/location_controller.dart';
import 'package:geocoding/geocoding.dart';
import 'package:appwrite_project/app/shared/dialog.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocation {
  static LocationModel location = LocationModel();

  Future<Position> _userCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Position position;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        print('==========>Location permissions are denied');
        // exit(1);
        return Future.error('==========>Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      showToast(
          msg:
              "Permissions are denied forever, Please update at App settings.");
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.

    // position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.high);
    // print(position);

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<LocationModel> getGeoLocation() async {
    Position position = await _userCurrentPosition().then((value) => value);

    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    var t = LocationModel();
    t.country = placemarks[0].country ?? null;
    t.city = placemarks[0].locality ?? null;
    t.postalCode = placemarks[0].postalCode ?? null;
    t.state = placemarks[0].administrativeArea ?? null;

    if (t.country != null) GeoLocation.location = t;

    LocationController.to.setCity(city: t.city!, state: t.state!);

    return t;
  }
}

class LocationModel {
  String? country;
  String? city;
  String? state;
  String? postalCode;
}

class CityModel {
  String? city;
  String? state;
}
