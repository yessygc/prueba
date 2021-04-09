import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:prueba/pages/cortinas_page.dart';
import 'package:prueba/pages/devices_page.dart';
import 'package:prueba/pages/registro_page.dart';
import 'package:prueba/pages/room_page.dart';
import 'package:prueba/pages/user_page.dart'; //Impartación de las clases de las paginas a las cuales se va a navegar

//Es la clase principal
class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

//Esta pagina contiene un CurvedNavigationBar, esto indica que se vera una barra de navegación ABAJO y cuando
//se le de un tap a un icono se vera una animación de una curva
class _PrincipalPageState extends State<PrincipalPage> {
  int pageIndex =
      0; //se crea e inicia una variable que hace referencia a la pagina
  //que se va a mostrar conforme se presiona un icono

//se mandan a llamar las clases que se utilizaran para navegar con el  CurvedNavigationBar
// y se crean como variables que no se pueden modificar en esta clase
  final RoomPage _habitaciones = RoomPage();
  final DevicesPage _dispositivos = new DevicesPage();
  final CortinasPage _cortinas = new CortinasPage();
  final RegistroPage _registro = new RegistroPage();
  final UserPage _usuarios = new UserPage();

  Widget _showPage = new RoomPage(); //se inicializa un metodo tipo widget
  //porque estará recibiendo información de otros widgets

//se crea un metodo de tipo widget porque va interactuar con la información de otros widgets
//y tiene un switch que indicará que contenido mastrará en caso de seleccionar cualquier icono
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _habitaciones;
        break;
      case 1:
        return _dispositivos;
        break;
      case 2:
        return _cortinas;
        break;
      case 3:
        return _registro;
        break;
      case 4:
        return _usuarios;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'WideOpen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Menú de usurio'),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: _showPage,
        ),
      ),
      //Es la creación de CurvedNavigationBar, cuanto y que iconos tendrá, el color de la barra,
      //tamaño y color del icono, cuando se selceione y color de su fondo
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepPurpleAccent,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue,
        height: 50,
        index: pageIndex,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Colors.black,
            semanticLabel: 'Habitaciones',
          ),
          Icon(
            Icons.devices,
            size: 20,
            color: Colors.black,
            semanticLabel: 'Dispositivos',
          ),
          Icon(
            Icons.compare_arrows,
            size: 20,
            color: Colors.black,
            semanticLabel: 'Cortinas',
          ),
          Icon(
            Icons.list,
            size: 20,
            color: Colors.black,
            semanticLabel: 'Registro',
          ),
          Icon(
            Icons.person,
            size: 20,
            color: Colors.black,
            semanticLabel: 'Usuario',
          ),
        ],
        animationDuration: Duration(
          //duración de la animación
          milliseconds: 200,
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (int tappedIndex) {
          //se indica que cuando el usuario haga tap en cualquiera de los iconos
          setState(() {
            _showPage = _pageChooser(
                tappedIndex); //la pagina que tiene como principal o sea _showPage
            //se cambie a la pagina que mande a llamar _pageChooser
          });
        },
      ),
    );
  }
}
