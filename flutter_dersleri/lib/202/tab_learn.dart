import 'package:flutter/material.dart';
import '../demos/list_view_demos.dart';
import '../demos/stack_demo_app.dart';

class TabLearnView extends StatefulWidget {
  const TabLearnView({super.key});

  @override
  State<TabLearnView> createState() => _TabLearnViewState();
}

class _TabLearnViewState extends State<TabLearnView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    const double notchedValue = 10;
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true, //loatingactionbutton için
        appBar: AppBar(
          bottom: TabBar(
              tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList()),
        ),
        body: _tabBarView(),
        bottomNavigationBar: BottomAppBar(
            notchMargin: notchedValue,
            shape: const CircularNotchedRectangle(),
            child: _myTabView()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
        indicatorColor: Colors.white,
        //labelColor: Colors.green,
        //unselectedLabelColor: Colors.red,
        controller: _tabController,
        tabs: const [
          Tab(
            text: 'Page 1',
            icon: Icon(Icons.chevron_left),
          ),
          Tab(text: 'Page 2', icon: Icon(Icons.chevron_right))
        ]);
  }

  TabBarView _tabBarView() {
    return TabBarView(controller: _tabController, children: const [
      ListViewDemos(),
      StackDemo(),
    ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _myTabViewExtension on _MyTabViews {}
