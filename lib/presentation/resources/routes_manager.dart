import 'package:flutter/material.dart';
import 'package:my_advanced_flutter/presentation/forgotPassword/forgotPassword.dart';
import 'package:my_advanced_flutter/presentation/login/login.dart';
import 'package:my_advanced_flutter/presentation/main/main.dart';
import 'package:my_advanced_flutter/presentation/onBoarding/onBoarding.dart';
import 'package:my_advanced_flutter/presentation/register/register.dart';
import 'package:my_advanced_flutter/presentation/resources/strings_manager.dart';
import 'package:my_advanced_flutter/presentation/splash/splash.dart';
import 'package:my_advanced_flutter/presentation/storeDetails/store_details.dart';

class Routes{
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";



}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashRoute:
       return MaterialPageRoute(builder: (_)=> SplashView());
      case Routes.loginRoute:
       return MaterialPageRoute(builder: (_)=> LoginView());
      case Routes.registerRoute:
       return MaterialPageRoute(builder: (_)=> RegisterView());
      case Routes.onBoardingRoute:
       return MaterialPageRoute(builder: (_)=> OnBoardingView());
      case Routes.forgotPasswordRoute:
       return MaterialPageRoute(builder: (_)=> ForgotPasswordView());  
      case Routes.mainRoute:
       return MaterialPageRoute(builder: (_)=> MainView());
      case Routes.storeDetailsRoute:
       return MaterialPageRoute(builder: (_)=> StoreDetailsView());
      default:
       return unDefinedRoute();
    }
  }


static Route<dynamic> unDefinedRoute(){
  return MaterialPageRoute(builder: (_)=>
  Scaffold(
    appBar: AppBar(
      title: Text(AppStrings.noRouteFound),
    ),
    body: Center(child:Text(AppStrings.noRouteFound)),
  ));
}
}
