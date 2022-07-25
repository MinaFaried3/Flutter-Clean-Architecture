import 'package:project1/weather/data/datasource/remote_datasourse.dart';
import 'package:project1/weather/domain/entities/weather.dart';
import 'package:project1/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDateSource baseRemoteDateSource;

  WeatherRepository(this.baseRemoteDateSource);

  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDateSource.getWeatherByCountryName(cityName))!;
  }
}
