import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }

              return Colors.purple;
            })),
            child: const Text('Like'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Save')),
          const IconButton(onPressed: null, icon: Icon(Icons.add)),
          FloatingActionButton(
              onPressed: () {
                //servise istek at sayfa değiştir ...
              },
              child: const Icon(
                  Icons.heart_broken)), //control space iconlar gözüküyo
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.yellow,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15)),
            child: const Text('show'),
          ),
          //Bütün butonların icon özelliği vardır
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_tree),
              label: const Text('data')),
          // Bir Text widget a tıklanma özelliği için InkWell() kullanılır:
          SizedBox(
              width: 50,
              height: 50,
              child: InkWell(
                onTap: () {},
                child: const Text('Button'),
              )),
          Container(
            height: 100,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              onPressed: () {},
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, right: 40, left: 40),
                  child: Text(
                    'Place Bid',
                    style: Theme.of(context).textTheme.headline6,
                  )))
        ],
      )),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'alarm'),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_right), label: 'arrow')
      ]),
    );
  }
}

//Borders
//CircleBorder()
//RoundedRectangleBorder()