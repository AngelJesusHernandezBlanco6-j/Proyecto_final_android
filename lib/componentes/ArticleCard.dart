import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  ArticleCard({@required this.titulo, @required this.precio, @required this.imagen});

  final titulo;
  final precio;
  final imagen;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                width: double.infinity,
                height: 185,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.network('$imagen'),
                  ),
                  Container(
                      width: 200,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text("$titulo", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                        ElevatedButton.icon(
                          icon: Icon(Icons.add),
                          label: Text('Click para ver mas'),
                          onPressed: () {},
                        )
                      ]))
                ]))));
  }
}
