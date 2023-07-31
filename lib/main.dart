
import 'package:cloudysky/presentation/bloc/weather_bloc.dart';
import 'package:cloudysky/presentation/pages/weather_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di/injection.dart';

Future<void> main() async {
  await Injector.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => Injector.getIt<WeatherBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WeatherApp',
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const WeatherPage(),
      ),
    );
  }
}
