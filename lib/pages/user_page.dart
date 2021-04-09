import 'package:flutter/material.dart';

//Esta es la clase del usuario, en esta clase solo se muestra un botón en el centro el cual indica si quiere cerrar sesión
class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //es la barra de arriba
        toolbarHeight: 30.0,
        title: Text('Cerrar sesión'), //y llevara este nombre
      ),
      body: Center(
        child: ElevatedButton(
          //botón en el centro el cual indica si quiere cerrar sesión
          child: Text(
            'Cerrar sesión',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

//es el metodo donde se muestra la alerta cuando se presiona el boton de cerrar sesión
//en esta alerta se muestra un titulo, un texto centrado y dos botones de texto
  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title:
                Text('¿Cerrar sesión?'), //el titulo que se muestra en la alerta
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                    '¿Seguro quieres cerrar sesión?'), //el texto centrado de la alerta
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Aceptar'), //este es un texto de boton
                onPressed: () {
                  Navigator.pushReplacementNamed(context,
                      '/'); //si da tap en esta opción se regresa a la pagina del login
                },
              ),
              TextButton(
                child: Text('Cancelar'), //este es el otro texto de boton
                onPressed: () {
                  Navigator.of(context)
                      .pop(); //si da tap en esta opción se regresa a la pagina del usuario
                },
              )
            ],
          );
        });
  }
}
