import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constant.dart';
import 'package:flutter_boilerplate/pages/about.dart';
import 'package:flutter_boilerplate/pages/home.dart';
import 'package:flutter_boilerplate/pages/inbox.dart';

const app = DefaultTabController(
  length: 3,
  child: Scaffold(
    body: _navBody,
    bottomNavigationBar: _bottomNavBody,
    backgroundColor: Colors.blueGrey,
  ),
);

const _navBody = TabBarView(children: [
  HomePage(title: '$AppName - Home'),
  InboxPage(title: '$AppName - Inbox'),
  AboutPage(title: '$AppName - About'),
]);

const _bottomNavBody = TabBar(
  tabs: [
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.inbox)),
    Tab(icon: Icon(Icons.info))
  ],
  labelColor: Colors.white,
  unselectedLabelColor: Colors.white54,
  indicatorSize: TabBarIndicatorSize.label,
  indicatorPadding: EdgeInsets.all(5.0),
  indicatorColor: Colors.yellow,
);
