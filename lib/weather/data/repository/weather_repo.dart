import 'package:mina_farid_clean_arch/weather/data/datasource/remote_data_source.dart';
import 'package:mina_farid_clean_arch/weather/domain/entities/weather.dart';
import 'package:mina_farid_clean_arch/weather/domain/repository/base_weather_repo.dart';

class WeatherRepo implements BaseWeatherRepo {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepo(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherWithCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }
}
