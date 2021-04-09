import 'package:flutter/material.dart';
import 'package:prueba/pages/login_page.dart';
import 'package:prueba/pages/signup_page.dart';
import 'package:prueba/pages/principal_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),
    'signup': (BuildContext context) => SignUpPage(),
    'principal': (BuildContext context) => PrincipalPage(),
  };
}
