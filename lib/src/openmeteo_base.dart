// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'constants.dart';

class Options {
  double? latitude;
  double? longitude;

  void elevation(double latitude, double longitude) {
    assert(latitude < -90 || latitude > 90,
        "Latitude should be between -90 and 90 degrees.");
    assert(longitude < -180 || longitude > 180,
        "Longitude should be between -180 and 180 degrees.");
    this.latitude = latitude;
    this.longitude = longitude;
  }

  void ecmwf(
      {double latitude,
      double longitude,
      var elevation = nan,
      currentWeather = false,
      temperatureUnit = celsius,
      windSpeedUnit = kmh,
      precipitationUnit = mm,
      timeformat = iso8601,
      pastDays = 0,
      startDate = null,
      endDate = null,
      cellSellection = land}) {}
}
