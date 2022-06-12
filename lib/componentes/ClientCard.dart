import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';

class ClientCard extends StatelessWidget {
  ClientCard({@required this.imagen, @required this.texto});

  final imagen;
  final texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 10,
        child: Container(
          width: double.infinity,
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('$imagen'),
                backgroundColor: Colors.transparent,
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 200.0,
                  // height: 160.0,
                  decoration: BoxDecoration(color: azul, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Text(
                      '$texto',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
