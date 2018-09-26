import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:flutter_redux/flutter_redux.dart';

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
