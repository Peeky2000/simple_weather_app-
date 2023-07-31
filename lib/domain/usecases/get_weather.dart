import 'package:cloudysky/data/failure.dart';
import 'package:cloudysky/domain/entities/weather_entity.dart';
import 'package:cloudysky/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';

class WeatherUseCase {
  final WeatherRepository repository;
  WeatherUseCase(this.repository);
  Future<Either<Failure, WeatherEntity>> getWeather(String cityName) {
    return repository.getCurrentWeather(cityName);
  }
}
