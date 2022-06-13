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
    "assets/images/curzaazul.jpg",
    "assets/images/monterrey.png",
    "assets/images/necaxa.png",
    "assets/images/puma.jpg",
    "assets/images/santos.png",
    "assets/images/tigres.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter GridView"),
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
