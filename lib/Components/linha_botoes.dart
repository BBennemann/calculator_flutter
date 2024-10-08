import 'package:calc_flutter/Components/botoes.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.botoes});

  final List<Botao> botoes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: botoes,
    );
  }
}
