import 'package:flutter/material.dart';

class MateriaWidget extends StatefulWidget {
  MateriaWidget({Key key}) : super(key: key);

  _MateriaWidgetState createState() => _MateriaWidgetState();
}

class _MateriaWidgetState extends State<MateriaWidget> {

  @override
  Widget build(BuildContext context) {
    var tamanoLargo = MediaQuery.of(context).size.width / 4;
    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: contenidoCard(tamanoLargo),
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
            color: Color(0xFF2F80ED),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "07:00",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "09:00",
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

Widget contenidoCard(double tamanoLargo) {
  return Padding(
    padding: EdgeInsets.only(
      top: 15.0,
      left: tamanoLargo + 10.0
    ),
    child: Text(
      "Inteligencia Artificial",
      style: TextStyle(
          color: Color(0xFF656363),
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
        ),
      ),
      
  );
}