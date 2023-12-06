import 'package:flutter/material.dart';
import 'package:app1_octavio/top.dart';
import 'package:app1_octavio/stairs_body.dart';

class stairs extends StatelessWidget {
  const stairs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color.fromARGB(24, 125, 124, 124)),
        child: Stack(children: [
          modified_subtop(),
          cover(),
          Align(
            alignment: AlignmentDirectional(-0.76, -0.02),
            child: Text("Choose type of activity",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ),
          CardCarrouselStairs(),
          PlayButton(),
          Align(
              alignment: AlignmentDirectional(0.96, -0.97),
              child: Icon(
                Icons.settings_input_component,
                color: Color.fromARGB(255, 254, 104, 11),
              )),
          Align(
            alignment: AlignmentDirectional(0.01, -0.8),
            child: Text(
              "12.2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.4, -0.67),
            child: Text(
              "km",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]));
  }
}
