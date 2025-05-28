import 'package:flutter/material.dart';
import 'package:meu_app/Atv/Loja.dart';
import 'package:meu_app/Atv/Switch22.dart';
import 'package:meu_app/Atv2/Atividade02.dart';
import 'package:meu_app/Botao.dart';
import 'package:meu_app/MaterialWidget/myMaterial.dart';
import 'package:meu_app/inherited/UserData.dart';
import 'package:meu_app/inherited/UserInfos.dart';
import 'package:meu_app/stateful/Contador.dart';
import 'package:meu_app/stateful/DarkMode.dart';
import 'package:meu_app/stateful/RandomNumber.dart';
import 'package:meu_app/stateless/SemEstado.dart';
import 'package:meu_app/stateless/User.dart';

// void main() {
//   runApp(Container(
//     child: Text(
//       "Bem vindo ao Flutter",
//       textDirection: TextDirection.ltr,
//       style: TextStyle(color: Colors.lime, fontSize: 30.0),
//     ),
//   )); 
// }
//Main

/// NO FLUTTER TEMOS 3 TIPOS DE APLICAÇÃO
/// STATELESS (ESTADO IMUTÁVEL)
/// A UI NUNCA MUDA APÓS SER CONSTRUÍDA
/// É USADO PARA COMPONENTES ESTÁTICOS COMO ÍCONES, TEXTOS FIXOS E ETC...
/// 
/// STATEFUL (ESTADO LOCAL)
/// A UI MUDA QUANDO O ESTADO INTERNO MUDA
/// É USADO EM WIDGETS QUE TEM INTENÇÃO COM O USUÁRIO, COMO ENTRADAS
/// DE TEXTOS, CARREGAMENTO DE DADOS, ANIMAÇÕES E ETC...
/// 
/// INHERITED (ESTADO HERDADO)
/// COMPARTILHAR DADOS DESCENDENTES NA ÁRVORE DE WIDGETS
/// ÚTIL PARA DADOS GLOBAIS LEVES COMO TEMAS, IDIOMAS E ETC...

void main() {
  // runApp(SemEstado());
  // runApp(MaterialApp(
  //   home: Center(
  //     child: Botao(),
  //   ),
  // ));

  // runApp(User());

  //Exemplo stateful

  // runApp(MaterialApp(
  //   home: Contador(),
  // ));

  // runApp(MaterialApp(
  //   home: DarkMode(),
  // ));
  
  // runApp(RandomNumber());

  // runApp(MaterialApp(
  //   home: Switch22()
  // ));

  // runApp(MaterialApp(
  //   home: Userinfos()
  // ));

  // runApp(MaterialApp(
  //   home: Loja()
  // ));

  // runApp(MyMaterial());
  runApp(Atividade02());
}