import 'package:flutter/material.dart';
import 'package:horario_escolar/src/paginas/horario.dart';
import 'package:horario_escolar/src/paginas/tareas.dart';

class Inicio extends StatefulWidget {
    
  Inicio({
    Key key
  }) : super(key: key);

  _InicioState createState() => _InicioState();

}

class _InicioState extends State<Inicio> {

  // Propiedades

  int pestanaActual = 0;
  final List<Widget> pantallas = [
    Horario(),
    Tareas(),
  ];

  Widget pantallaActual = Horario();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Color(0xF5F5F5F5),
        
        body: PageStorage(
          child: pantallaActual,
          bucket: bucket,
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
          onPressed: (){},
        ),

        // Posición de FAB

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // App Bar inferior

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  botonNavBar(Horario(), 'Inicio', 0, Icons.home),
                  botonNavBar(Tareas(), 'Tareas', 1, Icons.work),
                  SizedBox(width: 40,),
                  botonNavBar(Horario(), 'Horario', 2, Icons.calendar_today),
                  botonNavBar(Tareas(), 'Perfil', 3, Icons.person),
                ],
            ),
          ),
          
        ),

      );
  }

  Widget botonNavBar(Widget pantalla, String strPantalla, int intPantalla, IconData icon){
    return MaterialButton(
      minWidth: 40,
      onPressed: (){
        setState(() {
          pantallaActual = pantalla;
          pestanaActual = intPantalla;
        });
      },
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: pestanaActual == intPantalla ? Colors.blueAccent : Colors.grey,),
        Text(strPantalla, style: TextStyle(color: pestanaActual == intPantalla ? Colors.blueAccent : Colors.grey,),)
      ],),
    );
  }
}