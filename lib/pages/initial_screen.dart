import 'package:flutter/material.dart';

class MyPerfil extends StatefulWidget {
  const MyPerfil({Key? key}) : super(key: key);

  @override
  State<MyPerfil> createState() => _MyPerfilState();
}

class _MyPerfilState extends State<MyPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                height: 200.0, width: 200.0, color: Colors.blueAccent)));
  }
}
