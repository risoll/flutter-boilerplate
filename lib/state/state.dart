import 'package:flutter/foundation.dart';

@immutable
class AppState {
  final int counter;

  final String ipAddress;

  const AppState({this.counter = 0, this.ipAddress = ''});

  AppState copyWith({int counter, String ipAddress}) {
    return AppState(
        counter: counter ?? this.counter,
        ipAddress: ipAddress ?? this.ipAddress);
  }
}
