import 'package:flutter/material.dart';

import 'navigate_detail_learn.dart';

// anlamadımmm
class NavigationLearnView extends StatefulWidget {
  const NavigationLearnView({super.key});

  @override
  State<NavigationLearnView> createState() => _NavigationLearnViewState();
}

class _NavigationLearnViewState extends State<NavigationLearnView>
    with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: ((context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(
                context,
                NavigateDetailView(
                  isOkey: selectedItems.contains(index),
                ));
            if (response is bool) {
              addSelected(index, response);
            }
          },
          child: Placeholder(
            color: selectedItems.contains(index) ? Colors.green : Colors.red,
          ),
        );
      })),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () async {},
      ),
    );
  }
}

// constructsız sınıf with ile kullanılır
mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: const RouteSettings()),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          settings: const RouteSettings()),
    );
  }
}
