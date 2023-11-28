import 'package:flutter/material.dart';

void main() => runApp(Miapp());

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
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://i.ytimg.com/vi/VyhkfVHwXv8/hqdefault.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://i.ytimg.com/vi/VyhkfVHwXv8/hqdefault.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://i.ytimg.com/vi/VyhkfVHwXv8/hqdefault.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
                "https://i.ytimg.com/vi/VyhkfVHwXv8/hqdefault.jpg"),
          ),
        ]));
  }
}
