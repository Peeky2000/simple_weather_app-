import 'package:cloudysky/data/failure.dart';
import 'package:cloudysky/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName);
}
