import 'package:core_template/app/resources/styles.dart';
import 'package:core_template/core/config/router/app_router.dart';
import 'package:core_template/core/repositories/city_repository.dart';
import 'package:core_template/core/repositories/property_repository.dart';
import 'package:core_template/core/repositories/users_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UserRepository>(create: (_) => UserRepository()),
    ChangeNotifierProvider<PropertyRepository>(
        create: (_) => PropertyRepository()),
    ChangeNotifierProvider<CityRespository>(create: (_) => CityRespository()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aqarati.ma',
      initialRoute: AppRouter.initialRoute,
      theme: AppStyle.i.theme,
      onGenerateRoute: AppRouter.routes,
    );
  }
}
