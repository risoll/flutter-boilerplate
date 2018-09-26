import 'package:flutter_boilerplate/state/actions.dart';
import 'package:flutter_boilerplate/state/state.dart';

AppState reducer(AppState state, dynamic action) {
  if (action == IncrementAction || action is IncrementAction) {
    return state.copyWith(counter: state.counter + 1);
  }
  if (action == UpdateIPAddressAction || action is UpdateIPAddressAction) {
    return state.copyWith(ipAddress: action.ipAddress);
  }

  return state;
}
