import 'package:flutter/material.dart';
import 'package:horario_escolar/src/paginas/inicio.dart';
import 'package:horario_escolar/src/paginas/horario.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  // Todo: splash screen, sqlite, local_notification, tareas.

  final Map<String, dynamic> horario = {
    'LUNES': {
      'materias': {
        'Ingeniería de Pruebas': {
          'horario': ['07:00', '09:00'],
          'docente': 'Ing. Edison Espinosa'
         },
        'Inteligencia Artificial I': {
          'horario': ['09:30', '11:30'],
          'docente': 'Ing. José Luis Carrillo'
        },
      },
      'color': '#2F80ED'
    },
    'MARTES': {
      'materias': {
        'Seguridad Informática': {
          'horario': ['07:00', '09:00'],
          'docente': 'Ing. Marcelo Álvarez',
        },
        'Inteligencia Artificial I': {
          'horario': ['09:30', '11:30'],
          'docente': 'Ing. José Luis Carrillo'
        },
      },
      'color': '#01BAEF'
    },
    'MIÉRCOLES': {
      'materias': {
        'Lab. de Prod. Software I': {
          'horario': ['07:00', '09:00'],
          'docente': 'Ing. Diego Velasco',
        },
        'Ingeniería de Pruebas': {
          'horario': ['09:30', '11:30'],
          'docente': 'Ing. Edison Espinosa',
        }
      },
      'color': '#0CBABA'
    },
    'JUEVES': {
      'materias': {
        'Lab. de Prod. Software I': {
          'horario': ['07:00', '09:00'],
          'docente': 'Ing. Diego Velasco',
        },
        'Plan de Tesis': {
          'horario': ['09:30', '12:30'],
          'docente': 'Ing. Lucas Garcés'
        }
      },
      'color': '#EC9F05'
    },
    'VIERNES': {
      'materias': {
        'Seguridad Informática': {
          'horario': ['09:30', '11:30'],
          'docente': 'Ing. Marcelo Álvarez'
        }
      },
      'color': '#9FA4C4'
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
        'horario' : (BuildContext context) => HorarioPagina(horario: horario)
      },
    );
  }
}