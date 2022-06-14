import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hernandezb/componentes/slider_home.dart';
import 'package:hernandezb/componentes/CircleWidget.dart';
import 'package:hernandezb/componentes/ArticleCard.dart';
import 'package:hernandezb/estilos.dart';
import 'package:hernandezb/componentes/navBar.dart';

class Inicio extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        debugShowCheckedModeBanner: false,
        title: 'GoFutbol!',
        home: Scaffold(
          backgroundColor: Color(0xff00BCD1),
          appBar: AppBar(
            backgroundColor: rojo,
            elevation: 10,
            title: Text('Inicio', style: TextStyle(color: azul, fontWeight: FontWeight.bold)),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu, color: azul),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.logout_outlined, color: azul),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Texto de Bienvenida
                    Padding(padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0), child: Text("BIENVENIDO", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: fontSizeTitles))),
                    //Contenedor del Swiper
                    //Imagen abajo del swiper
                    Padding(padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10), child: Image.network('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/INICIO1.jpg')),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text("NOTICIAS PRINCIPALES",
                            style: TextStyle(
                              color: azul,
                              fontSize: fontSizeSubtitles,
                              fontWeight: FontWeight.bold,
                            ))),
                    ArticleCard(
                      titulo: 'Venezuela derroto a mexico',
                      imagen: 'https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/VENEZUELA.jpg',
                    ),
                    ArticleCard(
                      titulo: 'Chivas presento nueva piel para el equipo',
                      imagen: 'https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/APERTURA.jpg',
                    ),
                    ArticleCard(
                      titulo: 'La Liga Mexicana Se Enfrentara a Uruguay',
                      imagen: 'https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/URUGUAY.jpg',
                    ),
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              navBar(contexto: context, active: 'inicio'),
            ],
          ),
          // bottomNavigationBar: navBar(),
        ));
  }
}
