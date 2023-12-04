import 'package:app1_octavio/pages/paginaHome.dart';
import 'package:app1_octavio/pages/paginaUsers.dart';
import 'package:app1_octavio/pages/stairs.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _paginaActual = 0;

  List<Widget> _paginas = [paginaHome(), stairs(), paginaUsers()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color.fromRGBO(253, 133, 16, 1),
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.stairs), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: ""),
          ],
        ),
      ),
    );
  }
}
