import 'package:app1_octavio/pages/paginaHome.dart';
import 'package:flutter/material.dart';

class cardCarrousel extends StatelessWidget {
  const cardCarrousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.1, 0.4),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width * 0.88,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            card(),
            SizedBox(width: 30), // Add spacing between Text widgets
            card(),
            SizedBox(width: 30),
            card(),
            SizedBox(width: 30),
            card(),
            SizedBox(width: 30),
            card(),
            SizedBox(width: 30),
            card(),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(color: Colors.white60, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0, 3),
          )
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, 0.8),
              child: Icon(
                Icons.donut_large_outlined,
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: AlignmentDirectional(-0.8, 0),
              child: Text(
                "5 cups",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: AlignmentDirectional(-0.8, 0),
                child: Text("Drinking goal")),
          ],
        ));
  }
}

class largercard extends StatelessWidget {
  const largercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      decoration: BoxDecoration(color: Colors.white60, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          offset: Offset(0, 3),
        )
      ]),
      child: Align(
        alignment: AlignmentDirectional(-0.43, 0),
        child: Text(
          "No recent activity",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}

class lowercardCaroussel extends StatelessWidget {
  const lowercardCaroussel({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.1, 1),
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        height: 120,
        width: MediaQuery.of(context).size.width * 0.88,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            largercard(),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }
}

class contents extends StatelessWidget {
  const contents({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
            SizedBox(
              width: 20,
            ),
            Text(
              "steps",
              style: TextStyle(color: Colors.white60, fontSize: 15),
            )
          ],
        ),
        Align(
          alignment: AlignmentDirectional(-0.4, -0.61),
          child: Text(
            "2.3",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-0.24, -0.59),
          child: Text(
            "Km",
            style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.normal),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0001, -0.61),
          child: Text(
            "87",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.14, -0.59),
          child: Text(
            "ccal",
            style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.normal),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-0.83, 0.06),
          child: Text(
            "Daily goals",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-0.83, 0.6),
          child: Text(
            "Recent activity",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.7, 0.06),
          child: Text(
            "Open list >",
            style: TextStyle(color: Colors.orange, fontSize: 16),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.7, 0.6),
          child: Text(
            "See details >",
            style: TextStyle(color: Colors.orange, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
