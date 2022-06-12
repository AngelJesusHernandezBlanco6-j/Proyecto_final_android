import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';

class ArticleColumn extends StatelessWidget {
  ArticleColumn({@required this.imagen, @required this.titulo});

  final imagen;
  final titulo;

  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              '$imagen',
              height: 50,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Text(
                '$titulo',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Agregar'),
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Articulo'),
                    content: const Text('¡Se ha agregado su producto correctamente!'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancelar'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: azul,
                  minimumSize: Size(
                    double.infinity,
                    40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
