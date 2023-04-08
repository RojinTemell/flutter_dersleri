import 'package:flutter/material.dart';
import 'package:flutter_dersleri/demos/color_demos_app.dart';

class ColorLifeCycleDemos extends StatefulWidget {
  const ColorLifeCycleDemos({super.key});

  @override
  State<ColorLifeCycleDemos> createState() => _ColorLifeCycleDemosState();
}

class _ColorLifeCycleDemosState extends State<ColorLifeCycleDemos> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: _changeBackground, icon: const Icon(Icons.clear))
      ]),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
              child: ColorDemos(
            initialColor: _backgroundColor,
          ))
        ],
      ),
    );
  }

  void _changeBackground() {
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}
