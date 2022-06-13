import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';
import 'package:hernandezb/componentes/navBar.dart';

void main() {
  runApp(Teamfutbol());
} //FUNCION PRINCIPAL

class Teamfutbol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo GridView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
} //WIDGET SIN ESTADO

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //WIDGET CON ESTADO

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/atlas.jpg",
    "assets/images/barca.png",
    "assets/images/bravos.png",
    "assets/images/chivas.png",
    "assets/images/curzazul.jpg",
    "assets/images/monterrey.png",
    "assets/images/necaxa.png",
    "assets/images/puma.jpg",
    "assets/images/santos.png",
    "assets/images/tigres.png",
    "assets/images/toluca.png",
    "assets/images/atalante.png",
    "assets/images/delfines.jpg",
    "assets/images/hidalgo.jpg",
    "assets/images/irapuato.png",
    "assets/images/leon.png",
    "assets/images/murcielagos.jpg",
    "assets/images/puebla.png",
    "assets/images/queretaro.png",
    "assets/images/sanluis.jpg",
    "assets/images/sinaloa.png",
    "assets/images/tampico.png",
    "assets/images/tepic.png",
    "assets/images/zacatepec.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EQUIPOS DE FUTBOL"),
        centerTitle: true,
        backgroundColor: Colors.red.shade700,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_rounded),
            onPressed: () {
              Navigator.pushNamed(context, '/inicio');
            },
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(images[index], fit: BoxFit.cover);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}
