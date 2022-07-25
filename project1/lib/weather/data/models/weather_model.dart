import 'package:project1/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.description,
    super.name,
    super.main,
    super.pressure,
  );
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      json['id'],
      json['weather'][0]['description'],
      json['name'],
      json['weather'][0]['main'],
      json['main']['pressure'],
    );
  }
}
