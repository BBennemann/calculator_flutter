import 'package:calc_flutter/Components/memory.dart';
import 'package:flutter/material.dart';

import '../Components/teclado.dart';
import '../Components/visor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Memory memory = Memory();

  void _onpressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF363636),
      child: Column(
        children: [
          Visor(text: memory.getValue()),
          Teclado(cb: _onpressed,),
        ],
      ),
    );
  }
}