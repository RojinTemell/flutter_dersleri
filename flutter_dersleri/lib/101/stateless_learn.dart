import 'package:flutter/material.dart';

// sadece showing yapılacaksa data ile işlem yapılmayacaksa
class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({Key? key}) : super(key: key);
  static const titleWidget = _TitleWidget(text: 'ali');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        titleWidget,
        _emptymethod(),
        const _TitleWidget(text: 'ayşe'),
        _emptymethod(),
        const ContainerWidget(),
        _emptymethod(),
      ]),
    );
  }

  //basit component için method kullanılabilir
  SizedBox _emptymethod() => const SizedBox(height: 10);
}

//üstüne gel ctrl nokta
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(5)),
    );
  }
}

// eğer sadece sayfaya özgü widget yazmak için _ koyulur
class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
