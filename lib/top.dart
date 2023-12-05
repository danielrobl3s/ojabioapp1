import 'package:flutter/material.dart';

class top extends StatelessWidget {
  const top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 254, 104, 11),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(280, 280),
                bottomLeft: Radius.elliptical(280, 280))));
  }
}

class subtop extends StatelessWidget {
  const subtop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 253, 253),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(550, 260),
              bottomLeft: Radius.elliptical(550, 260)),
        ));
  }
}

class modified_subtop extends StatelessWidget {
  const modified_subtop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 253, 253),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(550, 260),
              bottomLeft: Radius.elliptical(550, 260)),
        ));
  }
}

class cover extends StatelessWidget {
  const cover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 35, 35, 35),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(250, 200),
              bottomRight: Radius.elliptical(580, 280))),
    );
  }
}

class cover2 extends StatelessWidget {
  const cover2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 142, 90, 28),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(210, 210),
              bottomRight: Radius.elliptical(250, 200))),
    );
  }
}
