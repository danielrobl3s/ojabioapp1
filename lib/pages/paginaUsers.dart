import 'package:app1_octavio/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:app1_octavio/top.dart';
import 'package:app1_octavio/main.dart';

class paginaUsers extends StatefulWidget {
  const paginaUsers({super.key});

  @override
  State<paginaUsers> createState() => _paginaUsersState();
}

class _paginaUsersState extends State<paginaUsers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(24, 125, 124, 124),
      child: Stack(
        children: [
          modified_subtop(),
          modifiedCover(),
          images(),
          Align(
            alignment: AlignmentDirectional(-0.8, -0.1),
            child: Text(
              "Your friends workout: ",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          cardCarrousel_users(),
        ],
      ),
    );
  }
}

class users extends StatefulWidget {
  const users({super.key});

  @override
  State<users> createState() => _usersState();
}

class _usersState extends State<users> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // or some other loading indicator
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              return Text(
                'Username: ${snapshot.data?[index]['username']} \n Last Workout: ${snapshot.data?[index]['last_workout']}',
              );
            },
          );
        },
      ),
    );
  }
}

class images extends StatefulWidget {
  const images({super.key});

  @override
  State<images> createState() => _imagesState();
}

class _imagesState extends State<images> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getImages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // or some other loading indicator
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 254, 104, 11),
                      radius: 50, // Adjust the radius as needed
                      backgroundImage: NetworkImage(
                        snapshot.data?[index]['url'] ?? 'default_image_url',
                      ),
                    ),
                  ),
                  Align(
                      alignment: AlignmentDirectional(0.1, -0.6),
                      child: FutureBuilder(
                        future: getUsers(),
                        builder: (context, snapshot) {
                          return Text(
                            'Welcome back! ${snapshot.data?[1]['username']}',
                            style: TextStyle(color: Colors.white),
                          );
                        },
                      )),
                ]),
              );
            },
          );
        },
      ),
    );
  }
}

class cardCarrousel_users extends StatelessWidget {
  const cardCarrousel_users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.1, 0.6),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width * 0.88,
        child: ListView(
          children: List.generate(3, (index) {
            return SizedBox(
              width: 1,
              child: CardUsers(userIndex: index),
            );
          }),
        ),
      ),
    );
  }
}

class CardUsers extends StatelessWidget {
  final int userIndex;

  const CardUsers({Key? key, required this.userIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white60, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          offset: Offset(0, 3),
        )
      ]),
      child: Column(
        children: [
          FutureBuilder(
            future: getUsers(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }

              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              final userData = snapshot.data?[userIndex] ?? {};
              return Text(
                'Username: ${userData['username']} \nLast Workout: ${userData['last_workout']}',
                style: TextStyle(fontSize: 12),
              );
            },
          ),
        ],
      ),
    );
  }
}
