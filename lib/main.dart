import 'package:flutter/material.dart';

import 'src/paginas/horario.dart';
 
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
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Horario Escolar',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                color: Colors.grey[800],
              ),
            ),
          ),
          backgroundColor: Colors.transparent, elevation: 0.0,
        ),
        backgroundColor: Color(0xF5F5F5F5),
        body: HorarioPagina(horario: horario),
      ),
    );
  }
}