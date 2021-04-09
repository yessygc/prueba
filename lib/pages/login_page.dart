import 'package:flutter/material.dart';

//Esta es la clase para el formulario de registro en caso de que el usuario no tenga una cuenta
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //Es toda la parte de la pantalla
      child: Scaffold(
        backgroundColor:
            Colors.deepPurpleAccent, //Especificamos que sea de color morado
        body: Center(
          child: Column(
            //Tendrá en varias columnas
            mainAxisAlignment: MainAxisAlignment.center, //que estarán centradas
            children: [
              Text(
                'WideOpen', //Es el nombre del proyecto,
                textAlign: TextAlign
                    .center, //que se encontrará al principio y de forma centrada de la pantalla
                style: TextStyle(
                  color: Colors
                      .white, //Se le da un estilo al texto, tamaño, color y tipo de letra
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height:
                    25.0, //Se toma como una separacion entre el texto inicial y el contenido que sigue despues de el
              ),
              Row(
                //Crea un array horizontal en donde se coloco un texto
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, //Indica que estará espaciado de lo que lo rodea
                children: [
                  Text(
                    //Testo que indica que formulario es
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Colors
                          .white, //Se le da un estilo al texto, tamaño, color y tipo de letra
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                //Se toma como una separacion entre el texto inicial y el contenido que sigue despues de el
                height: 25.0,
              ),
              _textFieldEmail(), //Creamos un metodo que se construira abajo, pero se coloca aquí para que tenga
              //forma el foulario
              SizedBox(
                height:
                    15.0, //Se toma como una separacion entre el texto inicial y el contenido que sigue despues de el
              ),
              _textFieldPassword(), //Creamos un metodo que se construira abajo
              SizedBox(
                height:
                    20.0, //Se toma como una separacion entre el texto inicial y el contenido que sigue despues de el
              ),
              _bottonLogin(context), //Creamos un metodo que se construira abajo
              SizedBox(
                height:
                    10.0, //Se toma como una separacion entre el texto inicial y el contenido que sigue despues de el
              ),
              _bottonSignUp(
                  context), //Creamos un metodo que se construira abajo
            ],
          ),
        ),
      ),
    );
  }

  //El metodo que creamos será un widget que recibirá parametros de _textFieldGeneral y el usurio lo verá como una caja donde ingresar datos
  Widget _textFieldEmail() {
    return _textFieldGeneral(
      //Los parametros que recibe estan inicializados en _textFieldGeneral y aquí se editan conforme usted lo desee
      labelText:
          'Correo', //El usuario vera que se le pide que ingrese su correo
      hintText: 'ejemplo@correo.com', //Se le da un ejemplo
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {},
      icon: Icons.email_outlined,
    );
  }

  //El metodo que creamos será un widget que recibirá parametros de _textFieldGeneral y el usurio lo verá como una caja donde ingresar datos
  Widget _textFieldPassword() {
    return _textFieldGeneral(
      //Los parametros que recibe estan inicializados en _textFieldGeneral y aquí se editan conforme usted lo desee
      labelText:
          'Contraseña', //El usuario vera que se le pide que ingrese su contraseña
      onChanged: (value) {},
      icon: Icons.visibility_off, //Icono que tendrá la caja de texto
      obscureText:
          true, //Esto indica que el texto que se ingrese no se podrá ver, para hacer más seguro ingresar su contraseña
    );
  }

  //El metodo que creamos será un widget que recibirá parametros de _textFieldGeneral y el usurio lo verá como una caja donde ingresar datos
  Widget _bottonLogin(context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
            context, 'principal'); //Cuando se presione este boton
        //se mostrará la pagina principal, o sea el contenido de la apliación
      },
      child: Text(
        'Iniciar sesión',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

//Es el boton que el usuario presionará para registrarse. Se especifica el el texto que tendrá, color y
//a que página debe dirigir si se presiona
  Widget _bottonSignUp(context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context,
            'signup'); //Cuando se presione este boton se mostrará la pagina de registro
      },
      child: Text(
        'Regístrate',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

//Es una clase adicional para inicializar los datos que llevaran los metodo anteriores
//y así indicar que son requeridas o no
class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final Function onChanged;
  final IconData icon;
  final bool obscureText;

  const _textFieldGeneral({
    @required this.labelText,
    this.hintText,
    this.keyboardType,
    @required this.onChanged,
    this.icon,
    this.obscureText = false,
  });

//Es lo que construye y da forma a el formulario en si
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        //Queremos que las cajas de texto tengan un espacio entre los lados de la pantalla
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        //El color de la caja de texto
        color: Colors.white,
        borderRadius: BorderRadius.circular(
            15.0), //Tendrá una forma en las orillas un poco redondeda
      ),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: labelText,
          hintText: hintText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
