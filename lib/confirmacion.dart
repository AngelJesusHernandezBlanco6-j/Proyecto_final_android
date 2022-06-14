import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';
import 'package:hernandezb/componentes/navBar.dart';

class Confirmacion extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GoFutbol!",
      home: Scaffold(
        backgroundColor: Color(0xff00BCD1),
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
                  child: Text('¡FELICIDADES!,Has llenado todos los campos para poder inscribirte a un equipo de futbol de tercera division,aunque el termino tecera division se escuche muy aburrido entrar a esta clase de equipos te da mucha experiencia para un futuro.Pero ojo llenar estos campos no te garantiza entrar a un equipo,solo es un registro para que puedas ser considerado.Lo unico que tienes que hacer es estar al pendiente al correo electronico que nos proporcionaste por que ahi se informara si fuiste seleccionado¡¡MUCHA SUERTE!! '),
                ),
                Image.network('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/equipos.jpg', width: 300, height: 300)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
