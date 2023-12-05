import 'package:app1_octavio/pages/paginaHome.dart';
import 'package:app1_octavio/pages/paginaUsers.dart';
import 'package:app1_octavio/pages/stairs.dart';
import 'package:flutter/material.dart';

//importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Myapp());
}

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
          fixedColor: Color.fromARGB(255, 254, 104, 11),
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.stairs), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.donut_small), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: ""),
          ],
        ),
      ),
    );
  }
}
