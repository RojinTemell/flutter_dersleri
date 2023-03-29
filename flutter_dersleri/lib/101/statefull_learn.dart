import 'package:flutter/material.dart';
import 'package:flutter_dersleri/product/language/language_items.dart';

import '../product/counter_hello_button.dart';

/*.copyWith(
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent, elevation: 0)), */

//sadece data işelmini bu kısım yapar
class StatefullLearnView extends StatefulWidget {
  const StatefullLearnView({Key? key}) : super(key: key);

  @override
  State<StatefullLearnView> createState() => _StatefullLearnViewState();
}

//burda işelmler olur hayat değişir
class _StatefullLearnViewState extends State<StatefullLearnView> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LangugeItems.welcomeTitle),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
    );
  }

  Padding _incrementButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: const Icon(Icons.remove),
    );
  }
}
