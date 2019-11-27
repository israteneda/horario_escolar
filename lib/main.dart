import 'package:flutter/material.dart';
import 'package:horario_escolar/src/paginas/inicio.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  // Todo: sqlite, local_notification, tareas.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horario Escolar',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Inicio(),
    );
  }
}