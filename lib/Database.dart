import 'package:cloud_firestore/cloud_firestore.dart';

create(String CollectionName, String docName, String name, int age) async {
  await FirebaseFirestore.instance
      .collection(CollectionName)
      .doc(docName)
      .set({'name': name, 'Age': age});
  print('Created');
}

update(
    String CollectionName, String docName, String fielname, int Value) async {
  await FirebaseFirestore.instance
      .collection(CollectionName)
      .doc(docName)
      .update({fielname: Value});
  print('update');
}

// ignore: non_constant_identifier_names
delete(String CollectionName, String docName) async {
  await FirebaseFirestore.instance
      .collection(CollectionName)
      .doc(docName)
      .delete();
  print('deleted');
}
