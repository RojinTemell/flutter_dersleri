import 'package:flutter/material.dart';

class NavigateDetailView extends StatefulWidget {
  const NavigateDetailView({Key? key, this.isOkey = false}) : super(key: key);
  final bool isOkey;
  @override
  State<NavigateDetailView> createState() => _NavigateDetailViewState();
}

class _NavigateDetailViewState extends State<NavigateDetailView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(
              Icons.check,
              color: widget.isOkey ? Colors.red : Colors.green,
            ),
            label: widget.isOkey ? const Text('red') : const Text('onayla'),
          ),
        ));
  }
}
