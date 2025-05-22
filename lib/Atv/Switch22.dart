import 'package:flutter/material.dart';

class Switch22 extends StatefulWidget{
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<Switch22>{
  bool isOpen = false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Loja"), backgroundColor: Colors.green),
        body: Center(
          child: SwitchListTile(
            title: isOpen ? Image.network('https://cdn-icons-png.flaticon.com/256/3731/3731841.png') : Image.network('https://cdn-icons-png.flaticon.com/256/2607/2607179.png'),
            subtitle: isOpen ? Text("Loja aberta") : Text("Loja fechada"),
            value: isOpen,
            onChanged: (bool value){
              setState(() {
                isOpen = value;
              });
            },
          ),
        ),
      ),
    );
  }
}