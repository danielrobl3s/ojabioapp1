import 'package:flutter/material.dart';
import 'package:app1_octavio/top.dart';
import 'package:app1_octavio/body.dart';

class paginaHome extends StatelessWidget {
  const paginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        subtop(),
        top(),
        cover2(),
        cover(),
        cardCarrousel(),
        lowercardCaroussel(),
        contents(),
      ],
    );
  }
}

Widget espacio() {
  return SizedBox(
    height: 200,
  );
}

Widget ancho() {
  return SizedBox(
    width: 50,
  );
}
