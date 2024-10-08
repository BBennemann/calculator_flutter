import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  Visor({super.key, this.text = ''});

  String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AutoSizeText(
              text,
              style: const TextStyle(color: Colors.white70, inherit: false, fontSize: 50),
              minFontSize: 20,
              maxFontSize: 80,
              maxLines: 1,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
