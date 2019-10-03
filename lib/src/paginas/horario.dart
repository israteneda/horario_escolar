import 'package:flutter/material.dart';
import 'package:horario_escolar/src/widgets/dia_clase.dart';


class HorarioPagina extends StatefulWidget {
  HorarioPagina({Key key}) : super(key: key);

  _HorarioPaginaState createState() => _HorarioPaginaState();
}

class _HorarioPaginaState extends State<HorarioPagina> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: DiaClaseWidget(),
    );
  }
}

class DiadeClase {
}