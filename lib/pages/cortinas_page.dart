import 'package:flutter/material.dart';

class CortinasPage extends StatefulWidget {
  @override
  _CortinasPageState createState() => _CortinasPageState();
}

//Esta es la página de las cortinas donde se podrá mostrar un texto que diga abrir y cerrar cortinas
class _CortinasPageState extends State<CortinasPage> {
  bool _bloquearCheck1 = false;
  bool _bloquearCheck2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //es la barra de arriba
        toolbarHeight: 30.0,
        title: Text('Abrir/Cerrar cortinas'), //y llevara este nombre
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0, //se toma como una separación entre "objetos"
            ),
            _crearSwitch1(), //colocamos aquí el metodo para que tenga forma
            SizedBox(
              height: 30.0, //se toma como una separación entre "objetos"
            ),
            _crearSwitch2(), //colocamos aquí el metodo para que tenga forma
          ],
        ),
      ),
    );
  }

//Es un metodo de tipo widget, esto indica que recibira información de otro widget, en este caso es un botón
//que indica si deseas abrir las cortinas
  Widget _crearSwitch1() {
    return SwitchListTile(
      title: Text('Abrir cortinas'),
      value: _bloquearCheck1,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck1 = valor;
        });
      },
    );
  }

//Es un metodo de tipo widget, esto indica que recibira información de otro widget, en este caso es un botón
//que indica si deseas cerrar las cortinas
  Widget _crearSwitch2() {
    return SwitchListTile(
      title: Text('Cerrar cortinas'),
      value: _bloquearCheck2,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck2 = valor;
        });
      },
    );
  }
}
