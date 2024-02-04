import 'package:mina_farid_clean_arch/weather/domain/entities/weather.dart';
import 'package:mina_farid_clean_arch/weather/domain/repository/base_weather_repo.dart';

class GetWeatherByCityName {
  final BaseWeatherRepo repository;

  GetWeatherByCityName(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherWithCityName(cityName);
  }
}
