import 'package:flutter/material.dart';
import "package:hernandezb/estilos.dart";

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Ink(
          color: rojo,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 20),
                child: Image.network("https://raw.githubusercontent.com/AngelJesusHernandezBlanco6-j/IMAGENESPROYECTOFINAL/main/LogoSample_ByTailorBrands.jpg", width: 250, height: 200),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: Colors.blueAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("¡BIENVENIDO!",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: fontSizeTitles,
                          )),
                      Text("Inicia sesion con tu correo electronico",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: fontSizeText,
                          )),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Ingresa tu correo o nombre de usuario',
                            filled: true,
                            fillColor: Color(0xFFF5F5F5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Ingresa tu contraseña',
                            filled: true,
                            fillColor: Color(0xFFF5F5F5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/inicio');
                          },
                          child: Text('INGRESAR'),
                          style: ElevatedButton.styleFrom(
                            primary: azul,
                            minimumSize: Size(
                              double.infinity,
                              60,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/jugadores');
                          },
                          child: Text('REGISTRARSE',
                              style: TextStyle(
                                color: azul,
                              )),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(double.infinity, 60),
                            side: BorderSide(
                              width: 3.0,
                              color: azul,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
