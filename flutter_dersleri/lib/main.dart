import 'package:flutter/material.dart';
import '202/model_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          tabBarTheme: const TabBarTheme(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label)),
      home: const ModelLearn(),
    );
  }
}
