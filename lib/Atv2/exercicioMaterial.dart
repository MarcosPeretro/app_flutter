import 'package:flutter/material.dart';

class Exerciciomaterial extends StatefulWidget {
  const Exerciciomaterial({super.key});

  @override
  State<Exerciciomaterial> createState() => _ExerciciomaterialState();
}

class _ExerciciomaterialState extends State<Exerciciomaterial> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercício Material App",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(
        toggleTheme: () {
          setState(() {
            isDarkMode = !isDarkMode;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  const HomePage({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercício Material")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              child: Text(
                "Menu de navegação",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Perfil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Sobre"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("Sair"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text("Seja bem vindo(a)", style: TextStyle(fontSize: 20)),
            ),
          ),
          SwitchListTile(
            title: Text(
              Theme.of(context).brightness == Brightness.dark ? "Modo claro" : "Modo Escuro"
              ),
          value: Theme.of(context).brightness == Brightness.dark,
          onChanged: (value) => toggleTheme(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.brown,
        padding: EdgeInsets.all(15),
        child: Text("Rodapé do app",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),),
      ),
    );
  }
}
