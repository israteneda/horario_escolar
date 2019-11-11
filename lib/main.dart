import 'package:flutter/material.dart';
import 'package:horario_escolar/src/paginas/inicio.dart';
import 'package:horario_escolar/src/paginas/horario.dart';
import 'package:horario_escolar/src/paginas/tareas.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  // Todo: sqlite, local_notification, tareas.

  final Map<String, dynamic> data = {
    'Ingeniería de Pruebas': {
      'horario': {
        'lunes': ['07:00', '09:00', '#2F80ED'],
        'miércoles': ['09:30', '11:30', '#0CBABA'],
        },
        'tareas': ['Nada'],
        'docente': 'Ing. Edison Espinosa',
    },
    'Inteligencia Artificial I': {
      'horario': {
        'lunes': ['09:30', '11:30', '#2F80ED'],
        'martes': ['09:30', '11:30', '#01BAEF'],
        },
        'tareas': ['Tomar Apuntes'],
        'docente': 'Ing. José Luis Carrillo',
    },
    'Seguridad Informática': {
      'horario': {
        'martes': ['07:00', '09:00', '#01BAEF'],
        'viernes': ['09:30', '11:30', '#9FA4C4'],
        },
        'tareas': ['Atender a clase'],
        'docente': 'Ing. Marcelo Álvarez',
    },
    'Lab. de Prod. Software I': {
      'horario': {
        'miércoles': ['07:00', '09:00', '#0CBABA'],
        'jueves': ['07:00', '09:00', '#EC9F05'],
        },
        'tareas': ['Aprender Angular'],
        'docente': 'Ing. Diego Velasco',
    },
    'Plan de Tesis': {
      'horario': {
        'jueves': ['09:30', '12:30', '#EC9F05'],
        },
        'tareas': ['Nada'],
        'docente': 'Ing. Lucas Garcés',
    },
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horario Escolar',
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => InicioPagina(),
        'horario' : (BuildContext context) => HorarioPagina(data: data),
        'tareas'  : (BuildContext context) => TareasPagina()
      },
    );
  }
}