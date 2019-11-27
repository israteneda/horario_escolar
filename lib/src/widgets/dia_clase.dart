import 'package:flutter/material.dart';

import 'materia.dart';


class DiaClaseWidget extends StatefulWidget {
  final Map<String, dynamic> data;
  final String dia;
  DiaClaseWidget({
    Key key,
    @required this.dia,
    @required this.data,
  }) : super(key: key);

  _DiaClaseState createState() => _DiaClaseState();
}

class _DiaClaseState extends State<DiaClaseWidget> {
  @override
  Widget build(BuildContext context) {
    final diaActual = widget.dia;
    final children = <Widget>[];
    Map<String, double> materias = new Map();
    widget.data.forEach(
      (materia, contenido) {
        contenido['horario'].forEach(
          (dia, horas){
            if (dia.toString().toUpperCase() == diaActual){
              materias[materia] = double.parse(horas[0].replaceAll(RegExp(r":"), "."));
              children.add(Materia(materia: materia, contenido: contenido, dia: dia));
            }
          }
        );
      }
    );

    return Container(
      margin: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Text(
            '$diaActual',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: Colors.grey[800],
            ),
            ),
          ),
          SizedBox(height: 10.0,),
          Column(
            children: children,
          ),
        ],
      ),
    );
  }
}