import 'package:flutter/material.dart';

//Container widget ın kendi içerisinde paddingi bulunuyor
class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePadding,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: _ContainerWidget(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: _ContainerWidget(),
            ),
            Padding(
              //override yapılabilir
              padding: const EdgeInsets.only(right: 20) +
                  const EdgeInsets.symmetric(vertical: 10),
              child: const Text('data'),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePadding = EdgeInsets.all(10);
}

class _ContainerWidget extends StatelessWidget {
  const _ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 100,
    );
  }
}
