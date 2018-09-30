import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/pages/inbox/get_ip_address_button.dart';
import 'package:flutter_boilerplate/pages/inbox/ip_address_display.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key key, this.title}) : super(key: key);

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
        floatingActionButton: generateQuoteButton);
  }
}
