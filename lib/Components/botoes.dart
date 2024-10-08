import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({super.key, required this.text, this.n = 1, this.color =  const Color(0xFF5b5b5b), required this.cb});

  const Botao.Big({super.key, required this.text, this.n = 2, this.color =  const Color(0xFF5b5b5b), required this.cb});

  const Botao.Operation({super.key, required this.text, this.n = 1, this.color =  const Color(0xFF6e6e6e), required this.cb});

  final String text;
  final int n;
  final Color color;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: n,
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: ElevatedButton(
          onPressed: () => cb(text),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: color,
            fixedSize: const Size(100, 100),
          ),
          child: Text(text, style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
