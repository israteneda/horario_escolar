import 'package:flutter/material.dart';

import 'materia.dart';


class DiaClaseWidget extends StatefulWidget {
  DiaClaseWidget({Key key}) : super(key: key);

  _DiaClaseWidgetState createState() => _DiaClaseWidgetState();
}

class _DiaClaseWidgetState extends State<DiaClaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Text(
            "LUNES",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: Colors.grey[800],
            ),
            ),
          ),
          SizedBox(height: 10.0,),
          Flexible(
          child: ListView(
            children: <Widget>[
              MateriaWidget(),
              SizedBox(height: 10.0,),
              MateriaWidget(),
              SizedBox(height: 10.0,),
              MateriaWidget(),
            ],
          ),
          ),
        ],
      ),
    );
  }
}