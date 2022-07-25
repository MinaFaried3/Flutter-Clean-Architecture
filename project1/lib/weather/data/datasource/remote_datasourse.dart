import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project1/core/utils/constants/constants.dart';

import '../models/weather_model.dart';

abstract class BaseRemoteDateSource {
  Future<WeatherModel?> getWeatherByCountryName(String CityName);
}

class RemoteDateSource extends BaseRemoteDateSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String CityName) async {
    try {
      var response = await Dio().get(
          "${AppConstants.baseUrl}weather?q=egypt&appid=${AppConstants.appKey}");
      if (kDebugMode) {
        print(response.data);
      }
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
