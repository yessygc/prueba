import 'package:flutter/material.dart';

//Esta es la clase donde se va a registrar la hora y el dia en que se abrieron o cerraron cortinas
//Por ahora esta en desarrollo y en este caso no hace nada más que su barra de arriba con su nombre
//Y en el contenido solo aparece el texto
class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //es la barra de arriba
        toolbarHeight: 20.0,
        title: Text('Registro'), //y llevara este nombre
      ),
      body: Container(
        child: Text(
            'Registro de cuando se A-C/C'), //este es el texto donde que se muestra en la página
      ),
    );
  }
}
