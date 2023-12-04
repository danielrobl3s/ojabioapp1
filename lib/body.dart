import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 246, 246, 245),
      child: Align(
        alignment: AlignmentDirectional(0, 0.4),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                color: Color.fromARGB(255, 246, 246, 245),
                child: Text("Info1")),
            Text("Info2"),
            Text("info3")
          ],
        ),
      ),
    );
  }
}
