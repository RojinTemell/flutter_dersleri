import 'package:flutter/material.dart';

//stlf
class StatefullLifeCycleLearnView extends StatefulWidget {
  const StatefullLifeCycleLearnView({Key? key, required this.message})
      : super(key: key);
  final String message;
  @override
  State<StatefullLifeCycleLearnView> createState() =>
      _StatefullLifeCycleLearnViewState();
}

class _StatefullLifeCycleLearnViewState
    extends State<StatefullLifeCycleLearnView> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    //initSatate den sonra çalışır
    super.didChangeDependencies();
    // print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearnView oldWidget) {
    super.didUpdateWidget(oldWidget);
    //print('b');
  }

  @override
  void dispose() {
    super.dispose();
    // print('dispose sayfanın öldüğü an çıkış');
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    // print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += " çift";
    } else {
      _message += " tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
