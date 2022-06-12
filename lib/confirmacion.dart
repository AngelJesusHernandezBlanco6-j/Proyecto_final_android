import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';
import 'package:hernandezb/componentes/navBar.dart';

class Confirmacion extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GoFutbol!",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GoFutbo!',
            style: TextStyle(
              color: azul,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: rojo,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: azul),
              onPressed: () {
                Navigator.pushNamed(context, '/inicio');
              }),
          elevation: 10,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                  child: Text(
                    'MENSAJE DE CONFIRMACION',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitles,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: Text('  ESTA APLICACION FUE REALIZADA PRIMERO FUE REALIZADA EN COMO BASE EN FLUTTERFLOW Y POSTERIOMENTE LA PASE A FLUTLAB,PARA QUE SE PUDIERA DESCARGAR Y UTILIZAR EN ALGUN DISPOSITIVO ANDROID.Y EN ESTA OCASION HICIMOS LA APLICACION MOVIL DE AUCERDO A CIERTAS ESPECIFICACIONES QUE NOS FUERRON DADAS POR EL PROFESOR Y LO MAS COMPLICADO FUE QUE LA TENIAMOS QUE HACER CON UN CODIGO..Y ESTA AL SER LA ULTIMA ACTIVIDAD SE NOS PIDIO, Y PARA FINALIZAR LO QUE TENGO QUE DECIR ES QUE ESTOS MODULOS FUERON DE GRAN AYUDA PARA SI EN ALGUN MOMENTO QUISIERAMOS SEGUIR ESTUDIANDO UNA CARRERA RELACIONANDA CON LA PORGRAMACION'),
                ),
                Image.network('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/APP.jpg', width: 300, height: 300)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
