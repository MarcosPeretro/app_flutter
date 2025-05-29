import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Atividade02 extends StatelessWidget {
  const Atividade02({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: "Calculadora",
      debugShowCheckedModeBanner: false,
      home: Calculadora(),
      // themeMode: isDarkMode ? ThemeMode.dark  : ThemeMode.light,
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),),
        
      body: Center(
        child: Align(alignment: Alignment.topCenter, child: Text("Bem vindo"), ),
      ),
      
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Formato",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            ListTile(title: Text("Simples")),
            ListTile(title: Text("Cientifica")),
            ListTile(title: Text("Contábil")),
            ListTile(title: Text("Astronomica")),
            ListTile(title: Text("Abaco")),
          ],
        ),
      ),
      
      bottomNavigationBar: BottomAppBar(
        child: Text("Calculadora zika né?"),
      ),
    );
  }
}