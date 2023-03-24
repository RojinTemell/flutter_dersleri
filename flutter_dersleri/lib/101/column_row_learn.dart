import 'package:flutter/material.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.red,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.purple,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  ))
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('data'),
                  Text('data2'),
                  Text('data3'),
                ],
              )),
          SizedBox(
            height: ProjectHeight.cardHeight,
            child: Column(
              children: const [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectHeight {
  static const double cardHeight = 200;
}
