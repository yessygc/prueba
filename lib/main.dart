import 'package:flutter/material.dart';
import 'package:prueba/pages/login_page.dart';
import 'package:prueba/routes/routes.dart'; //Importación de las clases que utilizaran su información

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //indicamos que sea de color morado
      color: Colors.deepPurpleAccent,
      //home: LoginPage(),
      initialRoute: '/', //se indica cual es la ruta inicial
      routes: getAplicationRoutes(), //se indican cuales serán la rutas
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}'); //utilizamos rutas con nombres
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                LoginPage()); //se indica que primero se muestre la pagina del login
      },
    );
  }
}
