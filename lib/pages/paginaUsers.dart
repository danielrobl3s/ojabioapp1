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
        children: [modified_subtop(), modifiedCover()],
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
