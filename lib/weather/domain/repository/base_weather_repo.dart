import 'package:mina_farid_clean_arch/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepo {
  Future<Weather> getWeatherWithCityName(String cityName);
}
