import 'package:flutter/material.dart';
import 'package:route/four_page.dart';
import 'package:route/second_page.dart';
import 'package:route/third_page.dart';

import 'first_page.dart';
import 'main.dart';

class RouteManifest {
  //通过push name: manifest， 配置页面，不需要传参的， 优先在routes这里找，找不到会在onGenerateRoute找，找不到就报错~
  static final Map<String, WidgetBuilder> routes = {
    "/": (context) => MyHomePage(title: 'Flutter Demo Home Page1111'),
    FirstPage.routeName: (context) => FirstPage(),
    SecondPage.routeName: (context) => SecondPage(),
    ThirdPage.routeName: (context) => ThirdPage(),
    FourPage.routeName: (context) => FourPage(),
  };

  //需要传参的的写这里
  static final RouteFactory onGenerateRoute = (RouteSettings settings) {
    print('azhansy settings.name=${settings.name}');
    if (settings.name == FourPage.routeName) {
      final ScreenArguments args = settings.arguments;
      return MaterialPageRoute(
        builder: (context) {
          return FourPage(
            title: args.title,
          );
        },
      );
    }
    assert(false, 'Need to implement ${settings.name}');
    return null;
  };
}
