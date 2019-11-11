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
          leading: IconButton(
            icon:Icon(Icons.arrow_back_ios, color: Colors.grey),
            onPressed:() => Navigator.pop(context, false),
          ),
          backgroundColor: Colors.transparent, elevation: 0.0,
        ),
        backgroundColor: Color(0xF5F5F5F5),
        body: Container(),
      );
  }

  // Widget _horario(horario){
  //   final children = <Widget>[];
  //   widget.tareas.forEach(
  //     (key, value) {
  //       children.add(DiaClaseWidget(dia: {key: value}));
  //       print('$key : $value');
  //     }
  //   );
  //   return ListView(
  //      children: children
  //   );
  // }
}