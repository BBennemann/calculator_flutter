import 'package:calc_flutter/Components/botoes.dart';
import 'package:calc_flutter/Components/linha_botoes.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  const Teclado({super.key, required this.cb});

  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 515,
      child: Column(
        children: [
          ButtonRow(botoes: [
            Botao.Big(text: 'C', n: 3, color: const Color(0xFF4a4a4a),cb: cb,),
            Botao.Operation(text: '/', cb: cb)
          ],),
          ButtonRow(botoes: [
            Botao(text: '7', cb: cb),
            Botao(text: '8', cb: cb),
            Botao(text: '9', cb: cb),
            Botao.Operation(text: '*', cb: cb),
          ],),
          ButtonRow(botoes: [
            Botao(text: '4', cb: cb),
            Botao(text: '5', cb: cb),
            Botao(text: '6', cb: cb),
            Botao.Operation(text: '-', cb: cb),
          ],),
          ButtonRow(botoes: [
            Botao(text: '1', cb: cb),
            Botao(text: '2', cb: cb),
            Botao(text: '3', cb: cb),
            Botao.Operation(text: '+', cb: cb),
          ],),
          ButtonRow(botoes: [
            Botao.Big(text: '0', cb: cb),
            Botao(text: '.', cb: cb),
            Botao.Operation(text: '=', cb: cb),
          ],)
        ],
      ),
    );
  }
}
