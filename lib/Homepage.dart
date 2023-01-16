// ignore_for_file: prefer_const_constructors

import 'package:crud_app/pages/page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HomePage'),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 25,
                thickness: 25,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  create('Pet', 'Cat', 'Sac', 56);
                },
                child: Text('CREATE')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pages()));
                },
                child: Text('READ')),
            ElevatedButton(
                onPressed: () {
                  update('Pet', 'Dog', 'Age', 20);
                },
                child: Text('UPDATE')),
            ElevatedButton(
                onPressed: () {
                  delete('Pet', 'Dog');
                },
                child: Text('DELETE')),
          ],
        )),
      ),
    );
  }
}
