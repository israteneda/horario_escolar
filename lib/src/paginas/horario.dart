import 'package:flutter/material.dart';
import 'package:horario_escolar/src/widgets/dia_clase.dart';

class HorarioPagina extends StatefulWidget {
  
  final Map<String, dynamic> data;
  
  HorarioPagina({
    Key key,
    @required this.data
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
              'Horario',
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
