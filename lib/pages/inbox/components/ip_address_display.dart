import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:flutter_redux/flutter_redux.dart';

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
