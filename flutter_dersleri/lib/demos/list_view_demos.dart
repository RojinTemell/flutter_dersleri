import 'package:flutter/material.dart';

class ListViewDemos extends StatefulWidget {
  const ListViewDemos({super.key});

  @override
  State<ListViewDemos> createState() => _ListViewDemosState();
}

class _ListViewDemosState extends State<ListViewDemos> {
  late final List<ProjectModel> _list;

  @override
  void initState() {
    super.initState();
    _list = CollectionItems().list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_circle_left,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'My Collections',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: PaddingUtility().paddinAll,
              child: _CategoryCard(model: _list[index]),
            );
          }),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  _CategoryCard({
    Key? key,
    required ProjectModel model,
  })  : _model = model,
        super(key: key);

  final ProjectModel _model;
  final PaddingUtility paddingUtility = PaddingUtility();
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: paddingUtility.paddinhorizontal,
        child: SizedBox(
          height: 250,
          child: Center(
            child: Padding(
              padding: paddingUtility.paddingTop,
              child: Column(children: [
                Image.asset(
                  _model.cardImgPath,
                  fit: BoxFit.fill,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _model.cardTitle,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text('${_model.price} ETH',
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectModel {
  final String cardImgPath;
  final String cardTitle;
  final double price;

  ProjectModel(
      {required this.cardImgPath,
      required this.cardTitle,
      required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 30);
  final paddinAll = const EdgeInsets.all(8.0);
  final paddinhorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<ProjectModel> list;
  CollectionItems() {
    list = [
      ProjectModel(
          cardImgPath: 'assets/png/dart.png',
          cardTitle: 'Abstract Art',
          price: 3.4),
      ProjectModel(
          cardImgPath: 'assets/png/dart.png',
          cardTitle: 'Abstract Art',
          price: 3.4),
      ProjectModel(
          cardImgPath: 'assets/png/dart.png',
          cardTitle: 'Abstract Art',
          price: 3.4),
    ];
  }
}
