import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const Miapp());

class Miapp extends StatelessWidget {
  const Miapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "workout",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: cuerpo());
  }
}

//separated widgets
Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://e1.pxfuel.com/desktop-wallpaper/646/153/desktop-wallpaper-dumbbells-fitnesss-by-iammiti-gym-mobile.jpg"),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        nombre(),
        SizedBox(
          height: 10,
        ),
        campousuario(),
        SizedBox(
          height: 10,
        ),
        campoContrasena(),
        SizedBox(
          height: 30,
        ),
        botonEntrar(),
      ],
    )),
  );
}

Widget nombre() {
  return Text(
    "Sign in",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campousuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "User", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget botonEntrar() {
  return TextButton(
    style: TextButton.styleFrom(
        backgroundColor: Colors.blueGrey,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17)),
    child: Text(
      "Enter",
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
    onPressed: () {},
  );
}
