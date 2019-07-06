import 'dart:async';
import 'package:belanjayuk_mobile_flutter/bloc/weather_state.dart';
import 'package:belanjayuk_mobile_flutter/models/weather.dart';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  @override
  WeatherState get initialState => WeatherInitial();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is GetWeather) {
      yield WeatherLoading();
      final weather = await _fetchWeatherFromFakeApi();
      yield WeatherLoaded(weather);
    }
  }

  Future<Weather> _fetchWeatherFromFakeApi () {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        return Weather(cityName: "Hhe", temperature: 123);
      }
    );
  }
}
