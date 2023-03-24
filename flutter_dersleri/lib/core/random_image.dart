import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 200}) : super(key: key);
  final String imgname =
      "https://os.novatorsoft.ismetkizgin.com/novatorsoft-ui/blog1.png";
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imgname,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
