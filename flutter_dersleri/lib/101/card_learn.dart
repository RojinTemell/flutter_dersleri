import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            color: Theme.of(context).colorScheme.primary,
            margin: ProjectMargins.cardMargin,
            shape: const CircleBorder(),
            child: const SizedBox(
              width: 100,
              height: 100,
            ),
          ),
          const _CardWidget(
            child: SizedBox(
              width: 150,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}

//Borders
//shape:RoundedRectangleBorder
//StadiumBorder
//CircleBorder
class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
      margin: ProjectMargins.cardMargin,
      child: child,
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}
