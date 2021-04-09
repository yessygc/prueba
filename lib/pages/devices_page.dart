import 'package:flutter/material.dart';

class DevicesPage extends StatefulWidget {
  @override
  _DevicesPageState createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30.0,
        title: Text('Añadir dispositivo'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 30.0,
        ),
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          _addDispositivo(),
          SizedBox(
            height: 25.0,
          ),
          _bottonAdd(),
          SizedBox(
            height: 25.0,
          ),
          _bottonCancelar(),
        ],
      ),
    );
  }

//En este metodo se crea una caja de texto donde el usuario puede ingresar el nombre de la habitación que va a crear
  Widget _addDispositivo() {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          //se pide que tenga los bordes un poco redondeados
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text(
            'Caracteres ${_nombre.length}'), //pedimos que ingrese el nombre en la parte de arriba de la caja de texto
        hintText:
            'Nombre del dispositivo', //se le indica al usuario que escriba
        labelText: 'Nombre', //el texto que va arriba de la caja de texto
        helperText:
            'Sólo escribe el nombre', //y esto es un texto de ayuda, normalmente va a bajo de la caja de texto
        suffixIcon: Icon(Icons.add), //el icono que tendrá del lado derecho
        icon: Icon(Icons.devices), //el icono que tendrá del lado izquierdo
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
          //print(_nombre);
        });
      },
    );
  }

//Es un metodo de tipo widget, esto indica que recibira información de otro widget, en este caso es un botón
//que indica que puedes crear una habitación
  Widget _bottonAdd() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Añadir dispositivo',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

//Es un metodo de tipo widget, esto indica que recibira información de otro widget, en este caso es un botón
//que indica si deseas cancelar el añadir ese dipositivo
  Widget _bottonCancelar() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Cancelar',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
