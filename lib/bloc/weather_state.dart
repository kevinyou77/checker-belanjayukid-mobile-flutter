import 'package:belanjayuk_mobile_flutter/data_models/weather.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherState extends Equatable {
  WeatherState([List props = const []]) : super(props);
}

class WeatherInitial extends WeatherState {}
class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded(this.weather) : super([weather]);
}

