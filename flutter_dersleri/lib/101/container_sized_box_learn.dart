import 'package:flutter/material.dart';

class ContainerSizedBoxLearnView extends StatelessWidget {
  ContainerSizedBoxLearnView({Key? key}) : super(key: key);
  final NameKeys keys = NameKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text(
              keys.name1 * 50,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox.shrink(), //boş alan
          SizedBox.square(
            dimension: 50,
            child: Text(keys.name2 * 10),
          ),
          Container(
            height: 50,
            color: ProjectColors.blue,
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 20, maxHeight: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Text(keys.name3 * 10),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 95, 29, 25),
                  Color.fromARGB(255, 159, 96, 96)
                ]),
                //shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 43, 25, 25),
                      offset: Offset(0.1, 1),
                      blurRadius: 15)
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 87, 7, 20),
                  width: 4,
                )),
          ),
          Container(
              height: 50, width: 50, decoration: ProjectContainerDecoration()),
          Container(
              height: 50, width: 80, decoration: ProjectUtility.boxDecoration)
        ]));
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(colors: [
        Colors.red,
        Colors.black,
      ]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 15)
      ],
      border: Border.all(
        color: Colors.white12,
        width: 4,
      ));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Colors.red,
              Colors.black,
            ]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 15)
            ],
            border: Border.all(
              color: Colors.white12,
              width: 4,
            ));
}

class NameKeys {
  final String name1 = 'rojin';
  final String name2 = 'salih';
  final String name3 = 'Hamdullah';
}

class ProjectColors {
  static Color blue = Colors.blue;
}
