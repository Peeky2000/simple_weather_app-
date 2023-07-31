import 'package:cloudysky/data/datasources/remote_data_source.dart';
import 'package:cloudysky/data/failure.dart';
import 'package:cloudysky/domain/entities/weather_entity.dart';
import 'package:cloudysky/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:weather/weather.dart' hide Weather;

class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteDataSource remoteDataSource;
  const WeatherRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName) async {
    // TODO: implement getCurrentWeather
    try {
      final result = await remoteDataSource.getWeather(cityName);
      return Right(result);
    } on OpenWeatherAPIException {
      return const Left(ServerFailure(''));
    } on ServerFailure {
      return const Left(ServerFailure('Goddamn Server'));
    }
  }
}
