import 'package:flutter/material.dart';

class HorarioPagina extends StatefulWidget {
  
  HorarioPagina({
    Key key
  }) : super(key: key);

  _HorarioPaginaState createState() => _HorarioPaginaState();
}

class _HorarioPaginaState extends State<HorarioPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Text(
          'Tareas'
        ),
      );
  }
}