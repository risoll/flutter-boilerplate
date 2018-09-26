import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/state/actions.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:flutter_redux/flutter_redux.dart';

typedef GenerateQuote = void Function();
final generateQuoteButton = StoreConnector<AppState, GenerateQuote>(
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
