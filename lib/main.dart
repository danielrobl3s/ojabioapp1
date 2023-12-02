import 'package:flutter/material.dart';

void main() => runApp(const Miapp());

class Miapp extends StatelessWidget {
  const Miapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("workout!"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            var t = DateTime.now();
            print(t);
          },
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Icon(Icons.access_time),
            SizedBox(
              height: 7,
            ),
            Text("Now")
          ]),
        ),
      ),
    );
  }
}
