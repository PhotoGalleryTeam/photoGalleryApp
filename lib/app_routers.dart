import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_routes.dart';
import 'package:photo_gallery/presentation/pages/home/home.dart';
import 'package:photo_gallery/presentation/pages/login/login_page.dart';
import 'package:photo_gallery/presentation/pages/register/register_page.dart';

class RoutesManager{

  static Route<dynamic> routes(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.homePageRoute: return MaterialPageRoute(
            builder: (_)=> Home(),
            settings: settings
        );

      case AppRoutes.loginPageRoute: return MaterialPageRoute(
          builder: (_)=> LoginPage(),
          settings: settings
      );

      case AppRoutes.registerPageRoute: return MaterialPageRoute(
          builder: (_)=> RegisterPage(),
          settings: settings
      );

      default: return MaterialPageRoute(
          builder: (_)=> Home(),//todo
          settings: settings
      );
    }

  }
}