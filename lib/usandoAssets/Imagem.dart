import 'package:flutter/material.dart';

/* 
  Formatos de Imagens aceitos pelo flutter
  PNG, JPEG/JPG, GIF, WEBP, BMP, WBMP, ICO, SVG, HEIF/HEIC
  SVG - não é nativo (Precisa de biblioteca)
  HEIF/HEIC - nao é nativo (Precisa de biblioteca)
 */
class Imagem extends StatelessWidget {
  const Imagem({super.key});

  @override
  Widget build( context) {
    return MaterialApp(
      title: "Imagens no app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inserindo imagem"),
        ),
        
        body: Center(
          child: Image.asset("assets/images/moto.jpg" , color: Colors.red, width: 100),
          
        ),
      ),
    );
  }
}