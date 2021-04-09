import 'package:flutter/material.dart';

//Esta es la clase de las habitaciones
class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //tendrá una barra de navegación arriba
        toolbarHeight: 30.0,
        title: Text('Crear habitación'), //titulo que tendrá en la appBar
      ),
      body: ListView(
        //se vera una vista de tipo lista, indica que su contenido se verá en forma de lista
        padding: EdgeInsets.symmetric(
            horizontal: 10.0, vertical: 30.0), //tendrá un espacio simetrico
        //que deja espacio tanto horizontal como veticlamente
        children: <Widget>[
          SizedBox(
            //Se toma como un espacio entre las cajas de texto
            height: 20.0,
          ),
          _crearHabitacion(), //se manda a llamar al metodo aquí para que tenga forma la página,
          //sin embargo el metodo está creado abajo
          SizedBox(
            height: 25.0, //Se toma como un espacio entre las cajas de texto
          ),
          _bottonCrear(), //se manda a llamar al metodo aquí para que tenga forma la página,
          //sin embargo el metodo está creado abajo y en este caso se trata de un boton
          SizedBox(
            height: 25.0, //Se toma como un espacio entre las cajas de texto
          ),
          _bottonCancelar(), //se manda a llamar al metodo aquí para que tenga forma la página,
          //sin embargo el metodo está creado abajo y en este caso se trata de un boton
        ],
      ),
    );
  }

//En este metodo se crea una caja de texto donde el usuario puede ingresar el nombre de la habitación que va a crear
  Widget _crearHabitacion() {
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
            'Nombre de la habitación', //se le indica al usuario que escriba
        labelText: 'Nombre', //el texto que va arriba de la caja de texto
        helperText:
            'Sólo escribe el nombre', //y esto es un texto de ayuda, normalmente va a bajo de la caja de texto
        suffixIcon: Icon(Icons.add), //el icono que tendrá del lado derecho
        icon: Icon(Icons.home), //el icono que tendrá del lado izquierdo
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
  Widget _bottonCrear() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Crear habitación',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

//Es un metodo de tipo widget, esto indica que recibira información de otro widget, en este caso es un botón
//que indica si deseas cancelar la creación de la habitación
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
