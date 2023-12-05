import 'package:flutter/material.dart';
import 'package:app1_octavio/top.dart';

class paginaUsers extends StatelessWidget {
  const paginaUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(24, 125, 124, 124),
      child: Stack(
        children: [modified_subtop(), modifiedCover()],
      ),
    );
  }
}
