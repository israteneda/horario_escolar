import 'package:flutter/material.dart';

class TareasPagina extends StatefulWidget {
  
  TareasPagina({
    Key key
  }) : super(key: key);

  _TareasPaginaState createState() => _TareasPaginaState();
}

class _TareasPaginaState extends State<TareasPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Tareas',
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