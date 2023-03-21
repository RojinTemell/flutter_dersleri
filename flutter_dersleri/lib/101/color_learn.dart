import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});
  final String _text = 'hello';
  final String _text2 = 'hellooo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(color: ProjectColors().porchase, child: Text(_text)),
          Text(
            _text2,
            style: TextStyle(color: ProjectColors().sulu),
          )
        ]));
  }
}

class ProjectColors {
  final Color porchase = const Color.fromARGB(255, 97, 104, 237);
  final Color sulu = const Color.fromARGB(255, 184, 67, 59);
}
