import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorState();
}

class _ColorState extends State<ColorDemos> {
  final ContainerLabels labels = ContainerLabels();
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    //inspect(widget) diyerek debug edebilirdik
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTop,
        items: [
          BottomNavigationBarItem(
              icon: const _ColorContainer(
                color: Colors.blue,
              ),
              label: labels.blue),
          BottomNavigationBarItem(
              icon: const _ColorContainer(color: Colors.purple),
              label: labels.purple),
          BottomNavigationBarItem(
              icon: const _ColorContainer(
                color: Colors.yellow,
              ),
              label: labels.yellow)
        ],
      ),
    );
  }

  void _colorOnTop(int value) {
    if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    } else if (value == _MyColors.purple.index) {
      changeBackgroundColor(Colors.purple);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    }
  }
}

enum _MyColors { blue, purple, yellow }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}

class ContainerLabels {
  final String purple = 'purple';
  final String blue = 'blue';
  final String yellow = 'yellow';
}
