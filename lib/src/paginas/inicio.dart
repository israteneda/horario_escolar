import 'package:flutter/material.dart';

class InicioPagina extends StatefulWidget {
  
  InicioPagina({
    Key key
  }) : super(key: key);

  _InicioPaginaState createState() => _InicioPaginaState();
}

class _InicioPaginaState extends State<InicioPagina> {
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
        body: Column(
          children: <Widget>[
            Text(
              'Bienvenido'
            ),
            RaisedButton(
              child: Text('Horario'),
              onPressed: (){Navigator.pushNamed(context, 'horario');}
            ),
            RaisedButton(
              child: Text('Tareas'),
              onPressed: (){Navigator.pushNamed(context, 'tareas');}
            ),
          ],
        )

      );
  }
}