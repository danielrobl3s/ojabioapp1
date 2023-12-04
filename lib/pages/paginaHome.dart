import 'package:flutter/material.dart';
import 'package:app1_octavio/top.dart';
import 'package:app1_octavio/body.dart';

class paginaHome extends StatelessWidget {
  const paginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        body(),
        subtop(),
        top(),
        cover2(),
        cover(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Text(
              "7235",
              style: TextStyle(
                  fontSize: 63,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Align(
          alignment: AlignmentDirectional(0, 0.4),
          child: Card(
            color: Color.fromARGB(25, 255, 255, 255),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "This card has important information",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        )
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
