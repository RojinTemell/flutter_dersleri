import 'package:flutter/material.dart';
//indicator tüm projede aynı kalır

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgressIndicator()],
      ),
      body: const Center(child: LinearProgressIndicator()),
    );
  }
}

class CenterCircularProgressIndicator extends StatelessWidget {
  const CenterCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
