import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: const Icon(Icons.chevron_left),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Image.network(
            ImageItems().newPhoto,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error_outline),
          ),
          Image.asset(
            ImageItems().flutterImg,
            fit: BoxFit.cover,
            height: 150,
          ),

          // Padding(
          // padding: const EdgeInsets.only(top: 20),
          //child: PngImage(name: ImageItems().dartPathName),
          //),
        ]),
      ),
    );
  }
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/png/$name.png',
      fit: BoxFit.cover,
    );
  }
}

class ImageItems {
  final String flutterImg = "assets/flutter.png";
  final String dartImg = "assets/png/dart.png";
  final String dartPathName = "dart";
  final String newPhoto =
      "https://os.novatorsoft.ismetkizgin.com/novatorsoft-ui/blog1.png";
}
