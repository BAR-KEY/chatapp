import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Chatscreen2 extends StatefulWidget {
  const Chatscreen2({Key? key}) : super(key: key);

  @override
  _Chatscreen2State createState() => _Chatscreen2State();
}

class _Chatscreen2State extends State<Chatscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat screen'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.exit_to_app_sharp, color: Colors.white))
        ],
      ),
    );
  }
}
