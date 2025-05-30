/* 
  Widget container é um bloco de construção visual que permite controlar layout, espaçamento, cor, bordas, transformação e muito mais.

  Funções do container
  Width / height -> largura e altura fixas
  padding -> espaço intern (preenchimento) dentro do container
  margin -> espaço externo (fora do container)
  color -> cor de fundo do container
  alignment -> alinha o elemento filho dentro do container
  decoration -> estilo visual completo (cores, bordas, sombreamento e etc)
  child -> o conteudo do container (filho)
  constraints -> limita dimensões (mínimo e máximo)
  transform -> aplica rotação, escala, transformação e etc
 */

import 'package:flutter/material.dart';

class Widgetcontainer extends StatelessWidget {
  const Widgetcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 220,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      color: Colors.black,
      alignment: Alignment.center,
      // child: Text("Container", style: TextStyle(fontSize: 35),),
      child: Container(
        width: 87,
        height: 150,

        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 153, 61, 169),
          border: Border.all(
            color: Colors.white,
            width: 2
          ),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}