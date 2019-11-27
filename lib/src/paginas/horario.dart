import 'package:flutter/material.dart';
import 'package:horario_escolar/src/widgets/dia_clase.dart';

class Horario extends StatefulWidget {
  
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
  
  Horario({
    Key key,
  }) : super(key: key);

  _HorarioState createState() => _HorarioState();
}

class _HorarioState extends State<Horario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Horario',
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
        body: _horario(),
      );
  }

  Widget _horario(){
    final children = <Widget>[];
    final dias = ['LUNES', 'MARTES', 'MIÉRCOLES', 'JUEVES', 'VIERNES'];
    dias.forEach(
      (dia) {
        children.add(DiaClaseWidget(dia: dia, data: widget.data));
      }
    );
    return ListView(
       children: children
    );
  }
}
