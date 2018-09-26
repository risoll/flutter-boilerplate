import 'package:flutter_boilerplate/state/reducers.dart';
import 'package:flutter_boilerplate/state/state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

const _initialState = AppState();

final store = Store<AppState>(reducer,
    initialState: _initialState, middleware: [thunkMiddleware]);
