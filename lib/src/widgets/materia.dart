import 'package:flutter/material.dart';

class Materia extends StatefulWidget {
  final String materia;
  final Map<String, dynamic> contenido;
  final String dia;
  Materia({
    Key key,
    this.materia,
    this.contenido,
    this.dia,
  }) : super(key: key);

  _MateriaState createState() => _MateriaState();
}

class _MateriaState extends State<Materia> {
  @override
  Widget build(BuildContext context) {

    double tamanoLargo = MediaQuery.of(context).size.width / 4;
    String nombreMateria = widget.materia;
    String nombreDocente = widget.contenido['docente'];
    String horaInicio = widget.contenido['horario'][widget.dia][0];
    String horaFinal = widget.contenido['horario'][widget.dia][1];
    String color = widget.contenido['horario'][widget.dia][2];

    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: contenidoCard(nombreMateria, nombreDocente, tamanoLargo),
            elevation: 5.0,
          ),
        ),
        SizedBox(
          width: tamanoLargo,
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            color: hexToColor(color),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$horaInicio',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '$horaFinal',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            elevation: 10.0,
          ),
        ),
      ],
    );
  }


}

Widget contenidoCard(String nombreMateria, String nombreDocente,double tamanoLargo) {
  return Padding(
    padding: EdgeInsets.only(
      top: 30.0,
      left: tamanoLargo + 10.0
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$nombreMateria',
          style: TextStyle(
              color: Color(0xFF656363),
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
          ),
        SizedBox(height: 10.0,),
        Text(
        '$nombreDocente',
        style: TextStyle(
            color: Color(0xFF656363),
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
      ],
    ),  
  );
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}