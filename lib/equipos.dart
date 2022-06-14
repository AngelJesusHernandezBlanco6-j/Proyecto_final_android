import 'package:flutter/material.dart';
import 'package:hernandezb/estilos.dart';
import 'package:hernandezb/componentes/navBar.dart';

class Equipos extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GoFutbol!',
      home: Scaffold(
        backgroundColor: Color(0xff00BCD1),
        appBar: AppBar(
          title: Text(
            'GoFutbol!',
            style: TextStyle(
              color: azul,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: rojo,
          leading: IconButton(
            icon: Icon(Icons.menu, color: azul),
            onPressed: () {},
          ),
          centerTitle: true,
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                    child: Text(
                      'LOS JUGADORES MAS FAMOSOS',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSizeTitles,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                    child: SizedBox(
                      height: 350,
                      width: double.infinity,
                      child: ListView(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/LEOMESSI.jpg'),
                              ),
                              title: Text('Lionel Messi'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/MARADONA.jpg'),
                              ),
                              title: Text('Diego Maradona'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/PELE.jpg'),
                              ),
                              title: Text('PELE'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/JOHANCRUYFF.jpg'),
                              ),
                              title: Text('Johan Cruyff'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/CR7.jpg'),
                              ),
                              title: Text('Cristiano Ronaldo'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/DOCTORGARCIA.jpg'),
                              ),
                              title: Text('Luis Garcia'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/CHICHARITO.jpg'),
                              ),
                              title: Text('Javier Hernandez'),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/HUGOSANCHEZ22.jpg'),
                              ),
                              title: Text('Hugo Sanchez'),
                            ),
                          ],
                        ).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
            navBar(
              contexto: context,
              active: 'equipos',
            ),
          ],
        ),
      ),
    );
  }
}
