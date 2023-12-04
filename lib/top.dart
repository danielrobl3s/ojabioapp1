import 'package:flutter/material.dart';

class top extends StatelessWidget {
  const top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
            color: Color.fromRGBO(253, 133, 16, 1),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(280, 280),
                bottomLeft: Radius.elliptical(280, 280))));
  }
}
