import 'package:flutter/material.dart';

//stls kısa yolunu kullanabilirsin
// bu kısımlar çok önemli
class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //iskeleti oluşturur
      appBar: AppBar(title: const Text('Scaffold Samples')),
      body: const Text('merhaba'),
      backgroundColor: const Color.fromARGB(255, 197, 10, 100),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b')
      ]),
    );
  }
}
