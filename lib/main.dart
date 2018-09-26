import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/components/app.dart';
import 'package:flutter_boilerplate/common/constant.dart';
import 'package:flutter_boilerplate/state/store.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() => runApp(FlutterApp());

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: AppName,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: app,
      ),
    );
  }
}
