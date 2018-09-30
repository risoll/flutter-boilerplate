import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/routes.dart';
import 'package:flutter_boilerplate/state/actions.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title = 'Home'}) : super(key: key);

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
            navigateButton(context, routeInbox)
          ],
        ),
      ),
      floatingActionButton: incrementButton,
    );
  }
}

FlatButton navigateButton(BuildContext context, String path) => FlatButton(
      onPressed: () => navigateToAsync(context, path),
      child: Text('Goto $path'),
    );

typedef IncrementCounter = void Function();
final incrementButton = StoreConnector<AppState, IncrementCounter>(
  converter: (store) => () => store.dispatch(IncrementAction),
  builder: (_, incrementCallback) {
    return FloatingActionButton(
      onPressed: incrementCallback,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  },
);

StoreConnector<AppState, int> counterDisplay(BuildContext context) =>
    StoreConnector<AppState, int>(
      converter: (store) => store.state.counter,
      builder: (_, counter) {
        return Text(
          '$counter',
          style: Theme.of(context).textTheme.display1,
        );
      },
    );
