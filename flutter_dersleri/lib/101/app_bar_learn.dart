import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        //Appbarı transparent olması için :
        //backgroundColor: Colors.transparent,
        //elevation: 0,

        //actions sağ tarafı kullanmayı sağlar
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_circle_sharp)),
          //const Center(child: CircularProgressIndicator()),
          const Text('data')
        ],
        actionsIconTheme: const IconThemeData(color: Colors.green, size: 40),
        toolbarTextStyle: const TextStyle(color: Colors.red),
      ),
    );
  }
}
