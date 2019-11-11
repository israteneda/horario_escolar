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

  _DiaClaseWidgetState createState() => _DiaClaseWidgetState();
}

class _DiaClaseWidgetState extends State<DiaClaseWidget> {
  @override
  Widget build(BuildContext context) {
    final diaActual = widget.dia;
    final children = <Widget>[];
    widget.data.forEach(
      (materia, contenido) {
        contenido['horario'].forEach(
          (dia, horas){
            if (dia.toString().toUpperCase() == diaActual){
              children.add(MateriaWidget(materia: materia, contenido: contenido, dia: dia));
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