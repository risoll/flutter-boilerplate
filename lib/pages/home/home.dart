import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/pages/home/components/counter_display.dart';
import 'package:flutter_boilerplate/pages/home/components/increment_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  // TODO: implement wantKeepAlive
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is Home page with Redux'),
            const Text(
              'You have pushed the button this many times:',
            ),
            counterDisplay(context),
          ],
        ),
      ),
      floatingActionButton: incrementButton,
    );
  }
}
