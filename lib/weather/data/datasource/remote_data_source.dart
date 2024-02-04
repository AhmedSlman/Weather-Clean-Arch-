import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mina_farid_clean_arch/core/utils/app_constants.dart';
import 'package:mina_farid_clean_arch/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      var response = await Dio().get(
          '${AppConstants.basUrl}/weather?q=$cityName&appid=${AppConstants.apikey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
