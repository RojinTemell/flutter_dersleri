import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final String _title = 'Welcome';
  final IconSizes iconsizes = IconSizes();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail),
            iconSize: iconsizes.iconsmall,
            color: IconColors().froly,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail_lock_outlined),
            color: iconColors.froly,
            iconSize: IconSizes().iconmedium,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mail_outlined),
            color: Theme.of(context).colorScheme.error,
            iconSize: IconSizes().iconmedium,
          )
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconsmall = 40;
  final double iconmedium = 50;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
