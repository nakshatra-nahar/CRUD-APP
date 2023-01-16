import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class pages extends StatefulWidget {
  const pages({super.key});

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          margin: EdgeInsets.all(12),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('Pet').snapshots(),
            builder: (context, petSnapShot) {
              if (petSnapShot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                final petDoc = petSnapShot.data!.docs;
                return ListView.builder(
                  itemCount: petDoc.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(petDoc[index]['name']),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ));
  }
}
