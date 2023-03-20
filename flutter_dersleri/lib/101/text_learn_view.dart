import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Rojin';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome $name ${name.length}',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  fontSize: 20)),
          Text(
            'Believe yourself $name',
            textAlign: TextAlign.center,
            style: ProjectsStyles.text2Style,
          ),
          Text(
            'Dont give up',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: ProjectsColor.text2Color),
          ),
          Text(keys.welcome),
          Text(userName ?? ''),
        ],
      )),
    );
  }
}

class ProjectsStyles {
  static TextStyle text2Style = const TextStyle(
    color: Color.fromARGB(255, 205, 72, 228),
    fontSize: 20,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
  );
}

class ProjectsColor {
  static Color text2Color = Colors.blue;
}

class ProjectKeys {
  final String welcome = 'welcome';
}
