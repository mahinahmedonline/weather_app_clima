import 'package:geolocator/geolocator.dart';

class Location {
  double? lat;
  double? lon;

  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,);

  Future <void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
      lat = position.latitude;
      lon = position.longitude;
    }
    catch(e){
      print(e);
    }
  }

}
