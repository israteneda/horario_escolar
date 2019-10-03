import 'package:flutter/material.dart';

class MateriaWidget extends StatefulWidget {
  final Map<String, dynamic> materia;
  final String color;
  MateriaWidget({
    Key key,
    this.materia,
    this.color
  }) : super(key: key);

  _MateriaWidgetState createState() => _MateriaWidgetState();
}

class _MateriaWidgetState extends State<MateriaWidget> {
  @override
  Widget build(BuildContext context) {
    String nombreMateria = widget.materia.keys.toList()[0];
    double tamanoLargo = MediaQuery.of(context).size.width / 4;
    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: contenidoCard(nombreMateria, tamanoLargo),
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
            color: hexToColor(widget.color),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${widget.materia[nombreMateria][0]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${widget.materia[nombreMateria][1]}',
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

Widget contenidoCard(String nombreMateria, double tamanoLargo) {
  return Padding(
    padding: EdgeInsets.only(
      top: 15.0,
      left: tamanoLargo + 10.0
    ),
    child: Text(
      '$nombreMateria',
      style: TextStyle(
          color: Color(0xFF656363),
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
        ),
      ),
      
  );
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}