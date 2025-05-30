/*
  Widget column
  é um widget usado para dispor widgets filhos verticalmente, um embaixo do outro, dentro de um único eixo (o eixo vertical Y)
  
  propriedades principais
  children -> uma lsita de widgets empilhados verticalmente
  mainAxisAlignmnet -> alinha os filhos no eixo vertical
  crossAxisAlignment -> alinha os filhos no eixo cruzado(horizontal)
  mainAxisSize -> controla se a column ocupa todo o espaço ou apenas o necessário
  textBaseLine -> necessário para o alinhamento de texto com o crossAxisAlignment. 
 */

import 'package:flutter/material.dart';
import 'package:meu_app/widgetsLayout/Box.dart';

class Widgetcolumn extends StatelessWidget {
  const Widgetcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
      /*   children: [
          Text("Texto 1"),
          Text("Texto 2"),
          Container(
            width: 50,
            height: 50,
            color: Colors.deepOrangeAccent,
          )
        ], */
        children: [
          
          Box(text: "Box 1", backgroundColor: Colors.amberAccent),
          Box(text: "Box 2", backgroundColor: Colors.redAccent),
          Box(text: "Box 3", backgroundColor: Colors.blueAccent),
        ],
      ),
    );
  }
}