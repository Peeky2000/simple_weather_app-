import 'package:cloudysky/domain/entities/weather_entity.dart';
import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable implements WeatherEntity {
  final String cityName;
  final String date;
  final String weather;
  final String weatherDesc;
  final String temp;

  final String tMin;
  final String tMax;
  final String tFeels;
  final String sunrise;
  final String sunset;
  final String icon;
  final int cond;
  const WeatherModel({
    required this.cityName,
    required this.date,
    required this.weather,
    required this.weatherDesc,
    required this.temp,
    required this.tMin,
    required this.tMax,
    required this.tFeels,
    required this.sunrise,
    required this.sunset,
    required this.icon,
    required this.cond,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        cityName,
        date,
        weather,
        weatherDesc,
        temp,
        tMin,
        tMax,
        tFeels,
        sunrise,
        sunset,
        icon,
        cond
      ];

  factory WeatherModel.fromJson(Map<String, dynamic> jsonMap) {
    return WeatherModel(
      cityName: jsonMap['cityName'],
      date: jsonMap['date'],
      weather: jsonMap['weather'],
      weatherDesc: jsonMap['weather'],
      temp: jsonMap['temp'],
      tMin: jsonMap['tMin'],
      tMax: jsonMap['tMax'],
      tFeels: jsonMap['tFeels'],
      sunrise: jsonMap['sunrise'],
      sunset: jsonMap['sunset'],
      icon: jsonMap['icon'],
      cond: jsonMap['cond'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "cityName": cityName,
      "date": date,
      "weather": weather,
      "weatheDesc": weather,
      "tempC": temp,
      "tMin": tMin,
      "tMax": tMax,
      "tFeels": tFeels,
      "sunrise": sunrise,
      "sunset": sunset,
      "icon": icon,
      "cond": cond,
    };
  }
}
