import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/state/actions.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:flutter_redux/flutter_redux.dart';

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
