import "package:equatable/equatable.dart";

abstract class WeatherEntity{
  String? get cityName;
  String? get date;
  String? get weather;
  String? get weatherDesc;
  String? get temp;

  String? get tMin;
  String? get tMax;
  String? get tFeels;
  String? get sunrise;
  String? get sunset;
  String? get icon;
  int? get cond;
}
