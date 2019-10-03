import 'package:flutter/material.dart';

import 'src/paginas/horario.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final Map<String, dynamic> horario = {
    'LUNES': {
      'materias': {
        'Ingeniería de Pruebas': ['07:00', '09:00'],
        'Inteligencia Artificial I': ['09:30', '11:30'],
      },
      'color': '#2F80ED'
    },
    'MARTES': {
      'materias': {
        'Seguridad Informática': ['07:00', '09:00'],
        'Inteligencia Artificial I': ['09:30', '11:30'],
      },
      'color': '#01BAEF'
    },
    'MIÉRCOLES': {
      'materias': {
        'Lab. de Prod. Software I': ['07:00', '09:00'],
        'Ingeniería de Pruebas': ['09:30', '11:30'],
      },
      'color': '#0CBABA'
    },
    'JUEVES': {
      'materias': {
        'Lab. de Prod. Software I': ['07:00', '09:00'],
        'Plan de Tesis': ['09:30', '11:30'],
      },
      'color': '#EC9F05'
    },
    'VIERNES': {
      'materias': {
        'Seguridade Informática': ['09:30', '11:30'],
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