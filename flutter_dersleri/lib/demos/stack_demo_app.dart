import 'package:flutter/material.dart';

import '../core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final _cardheight = 50.0;
  final String imgname =
      "https://os.novatorsoft.ismetkizgin.com/novatorsoft-ui/blog1.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: _cardheight / 2,
                  child: const RandomImage(),
                ),
                Positioned(
                    height: _cardheight,
                    bottom: 0,
                    width: 200,
                    child: const Card(
                      color: Color.fromARGB(255, 70, 145, 206),
                      //shape: RoundedRectangleBorder(),
                    ))
              ],
            )),
        const Spacer(flex: 6)
      ]),
    );
  }
}
