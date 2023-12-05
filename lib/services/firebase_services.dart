//This file has everything to do with firebase on this project

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsers() async {
  List users = [];
  CollectionReference collectionReferenceUsers = db.collection('users');

  QuerySnapshot queryUsers = await collectionReferenceUsers.get();

  queryUsers.docs.forEach((documento) {
    users.add(documento.data());
  });

  return users;
}

Future<List> getImages() async {
  List images = [];
  CollectionReference collectionReferenceImages = db.collection('images');

  QuerySnapshot queryImages = await collectionReferenceImages.get();

  queryImages.docs.forEach((documento) {
    images.add(documento.data());
  });

  return images;
}
