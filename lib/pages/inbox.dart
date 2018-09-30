import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/state/actions.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key key, this.title = 'Inbox'}) : super(key: key);

  final String title;

  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage>
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
              const Text('This is Inbox page with Redux+Thunk'),
              const Text(
                'Async get IP Address API with Redux Thunk below:',
              ),
              quoteDisplay(context)
            ],
          ),
        ),
        floatingActionButton: getIPAddressButton);
  }
}

StoreConnector<AppState, AppState> quoteDisplay(BuildContext context) =>
    StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (_, state) {
        return Text(
          '${state.ipAddress}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20.0),
        );
      },
    );


typedef GetIPAddress = void Function();
final getIPAddressButton = StoreConnector<AppState, GetIPAddress>(
  converter: (store) => () => store.dispatch(getIPAddressThunkAction),
  builder: (_, getIPAddressCallback) {
    return FlatButton(
      color: Colors.blueGrey,
      onPressed: getIPAddressCallback,
      child: const Text(
        'Get IP Address',
        style: TextStyle(color: Colors.white),
      ),
    );
  },
);
