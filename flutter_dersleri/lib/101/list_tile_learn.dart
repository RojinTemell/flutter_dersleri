import 'package:flutter/material.dart';
import 'package:flutter_dersleri/101/image_learn.dart';
import 'package:flutter_dersleri/core/random_image.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});
  //final imgurl = "https/picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const Text('My Playlist'),
                  onTap: () {},
                  subtitle: const Text('Create your playlist'),
                  leading: const Icon(Icons.queue_music_outlined),
                  trailing: const Icon(Icons.chevron_right),
                ),
              ),
            ),
            const SizedBox(height: 200),
            ListTile(
              // dense: true,sıkıştırmayı sağlar
              title: const RandomImage(),
              onTap: () {},
              subtitle: const Text('listen the music '),
              leading: const Icon(Icons.list),
              trailing: const SizedBox(
                  width: 20, child: Icon(Icons.done_outline_outlined)),
            ),
          ],
        ),
      ),
    );
  }
}
