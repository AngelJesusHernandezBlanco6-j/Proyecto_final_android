import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';
import 'package:hernandezb/componentes/navBar.dart';

void main() async {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, initialRoute: '/', routes: {
      '/': (context) => Gridviewequipo(),
      '/detail': (context) => RouteTwo(image: '', name: ''),
    }),
  );
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class Gridviewequipo extends StatelessWidget {
  final List<PhotoItem> _items = [
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/FCJUAREZ.jpg", "BRAVOS FC"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/zacatepec.png", "ZACATEPEC"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/CHIVASGDL.jpg", "CHIVAS"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/TIGRES.jpg", "TIGRES"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/atalante.png", "ATLANTE"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/delfines.jpg", "ATLETICO COATZACOALCOS"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/hidalgo.jpg", "ATLETICO HIDALGO"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/irapuato.png", "IRAPUATO"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/leon.png", "LEON"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/monarca.png", "MONARCAS"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/murcielagos.jpg", "MURCIELAGOS DE GUAMUCHIL"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/pachuca.jpg", "PACHUCA"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/queretaro.png", "QUERETARO"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/tepic.png", "TEPIC"),
    PhotoItem("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/EQUIPOSLOGO/tijuana.png", "TIJUANA"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BCD1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade700,
        actions: [
          IconButton(
            icon: Icon(Icons.logout_outlined, color: azul),
            onPressed: () {
              Navigator.pushNamed(context, '/inicio');
            },
          ),
        ],
        title: Text('EQUIPOS DE FUTBOL MEXICANO'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RouteTwo(image: _items[index].image, name: _items[index].name),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_items[index].image),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RouteTwo extends StatelessWidget {
  final String image;
  final String name;

  RouteTwo({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade700,
        title: Text('SEGUNDA PANTALLA✌️'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(image),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                name,
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
