import 'package:cloudysky/data/datasources/remote_data_source.dart';
import 'package:cloudysky/data/repositories/weather_respository.dart';
import 'package:cloudysky/domain/repositories/weather_repository.dart';
import 'package:cloudysky/domain/usecases/get_weather.dart';
import 'package:cloudysky/presentation/bloc/weather_bloc.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static final getIt = GetIt.I..allowReassignment = true;

  static Future<void> init() async {
    setupData();
    setDomain();
    setPresentation();
  }

  static Future<void> setPresentation() async {
    // bloc
    getIt.registerFactory(() => WeatherBloc(getIt()));
  }

  static Future<void> setupData() async {
    //di for remote data source
    getIt.registerLazySingleton<RemoteDataSource>(
          () => RemoteDataSourceImpl(),
    );
  }

  static Future<void> setDomain() async {
    //di for repositories
    getIt.registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImpl(
        remoteDataSource: getIt(),
      ),
    );
    // di for usecase
    getIt.registerLazySingleton(() => WeatherUseCase(getIt()));
  }
}
