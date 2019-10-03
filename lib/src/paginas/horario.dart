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