import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/components/app.dart';
import 'package:flutter_boilerplate/constant.dart';
import 'package:flutter_boilerplate/routes.dart';
import 'package:flutter_boilerplate/state/store.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main(){
  // initialize router
  router = newRouter();

  runApp(FlutterApp());
}

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
        home: app
      ),
    );
  }
}
