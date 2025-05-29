import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widgets de layout",
      home: MotandoTela(),
    );
  }
}

class MotandoTela extends StatefulWidget {
  const MotandoTela({super.key});

  @override
  State<MotandoTela> createState() => _MotandoTelaState();
}

class _MotandoTelaState extends State<MotandoTela> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}