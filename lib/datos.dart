import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';
import 'package:hernandezb/componentes/navBar.dart';

class Datos extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoFutbol!',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GoFutbol!',
            style: TextStyle(
              color: azul,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: rojo,
          elevation: 10,
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
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                  child: Text(
                    "Desarrollador",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 120.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/JESUS.jpg'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Angel Jesus\nHernandez Blanco",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSizeSubtitles,
                                ),
                              ),
                              Text(
                                "6-J",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  // fontWeight: FontWeight.bold,
                                  fontSize: fontSizeSubtitles,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 10, 10),
                  child: Text(
                    "DATOS DEL DESARROLLADOR:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: azul,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                  child: Text(
                    "Ubicación:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeSubtitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                  child: Text(
                    "Cd. Juarez,Oasis De Sudan 915-6",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSizeSubtitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                  child: Text(
                    "Correo de contacto:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeSubtitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                  child: Text(
                    "hernandezblancoangeljesus20@gmail.com",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSizeSubtitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                  child: Text(
                    "Numero de contacto:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeSubtitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                  child: Text(
                    "656-816-2749",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSizeSubtitles,
                    ),
                  ),
                ),
              ],
            ),
            navBar(contexto: context, active: 'desarrollador')
          ],
        ),
      ),
    );
  }
}
