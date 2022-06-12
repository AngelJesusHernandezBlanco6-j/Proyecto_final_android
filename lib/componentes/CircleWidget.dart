import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  CircleWidget({@required this.icono, @required this.texto, @required this.color});

  final icono;
  final texto;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 100.0,
      child: Column(children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
          child: Icon(
            icono,
            color: Colors.white,
          ),
        ),
        Text(
          "$texto",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        ),
      ]),
    );
  }
}
