import 'package:flutter/material.dart';
import 'package:photo_gallery/presentation/pages/home/home.dart';

class RoutesManager{

  static Route<dynamic> routes(RouteSettings settings){
    switch(settings.name){
      case '/home':
        return MaterialPageRoute(
            builder: (_)=> Home(),
            settings: settings
        );

      default: return MaterialPageRoute(
          builder: (_)=> Home(),
          settings: settings
      );
    }

  }
}