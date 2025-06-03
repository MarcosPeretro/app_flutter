import 'package:flutter/material.dart';

class Fonts extends StatelessWidget {
  const Fonts({super.key});

  @override
  Widget build(ext) {
    return MaterialApp(
      title: "Assets",
      home: Scaffold(
        appBar: AppBar(title: Text("Usando fonts"),),
        body: Center(
          child: Text(
            "Estou usando uma fonte pelo assets muitas palavra saqui",
          style: TextStyle(fontFamily: "AlumniSansSC", fontSize: 30),),
        ),
      ),
    );
  }
}