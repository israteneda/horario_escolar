import 'package:flutter/material.dart';
import 'package:horario_escolar/src/widgets/dia_clase.dart';

class HorarioPagina extends StatefulWidget {
  
  final Map<String, dynamic> horario;
  
  HorarioPagina({
    Key key,
    @required this.horario
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
          backgroundColor: Colors.transparent, elevation: 0.0,
        ),
        backgroundColor: Color(0xF5F5F5F5),
        body: _horario(widget.horario),
      );
  }

  Widget _horario(horario){
    final children = <Widget>[];
    widget.horario.forEach(
      (key, value) {
        children.add(DiaClaseWidget(dia: {key: value}));
        print('$key : $value');
      }
    );
    return ListView(
       children: children
    );
  }
}
