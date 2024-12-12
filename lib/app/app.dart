import 'package:flutter/material.dart';
import 'package:my_advanced_flutter/presentation/resources/routes_manager.dart';
import 'package:my_advanced_flutter/presentation/resources/theme.manager.dart';

class MyApp extends StatefulWidget {

  const MyApp._internal();  // private named constructor

  static final MyApp instance = MyApp._internal(); // single intance -- singleton
  
  factory MyApp() => instance; //factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}