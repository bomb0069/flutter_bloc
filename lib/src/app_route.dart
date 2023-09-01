import 'package:flutter/material.dart';
import 'package:simple/src/pages/another_page.dart';
import 'package:simple/src/pages/home_page.dart';

class AppRoute {
  static const home = 'home';
  static const another = 'anothor';

  final _route = <String, WidgetBuilder>{
    home: (context) => MyHomePage(title: "Home Page"),
    another: (context) => AnotherPage(title: "Another Page"),
  };

  get getAll => _route;
}
