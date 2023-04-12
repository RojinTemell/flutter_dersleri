import 'package:flutter/material.dart';
import 'package:flutter_dersleri/202/model_learn.dart';

class ModelLearn extends StatefulWidget {
  const ModelLearn({super.key});

  @override
  State<ModelLearn> createState() => _ModelLearnState();
}

class _ModelLearnState extends State<ModelLearn> {
  PostModel8 user9 =
      PostModel8(body: 'a'); // değiştirmek için ya final ya da böyle
  @override
  void initState() {
    super.initState();
    final user1 = PostModel();
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'title', 'body');
    user2.body = 'ti';
    final user3 = PostModel3(1, 2, 'title', 'body');
    // user3.body = 'ti'; bu çalışmaz çünkü final
    final user4 = PostModel4(userId: 1, id: 2, title: "title", body: "body");
    //user4.body = 'r'; atanma yapılamaz final
    final user5 = PostModel5(userId: 1, id: 2, title: "title", body: "body");
    //user5. erişim sağlanamaz çünkü model _id sadece userıd erişebilir oda get yaptığımız için
    user5.userId;
    final user6 = PostModel6(userId: 1, id: 2, title: "title", body: "body");
    final user7 = PostModel7();
    //servisten data çekilecekse en mantıklı olan
    final user8 = PostModel8(title: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user9.body ?? ' not have any data')),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = user9.copyWith(title: 'vb');
          user9.updateBody('hi');
        });
      }),
    );
  }
}
