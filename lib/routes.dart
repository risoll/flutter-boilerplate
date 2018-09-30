import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/pages/about.dart';
import 'package:flutter_boilerplate/pages/home.dart';
import 'package:flutter_boilerplate/pages/inbox.dart';

// singleton for accessing routes
Router router;

// put outside func so it can be imported from the other
const String routeRoot = '/';
const String routeInbox = '/inbox';
const String routeAbout = '/about';

Router newRouter() {
  final router = Router();

  router.notFoundHandler = notFoundHandler;
  router.define(routeRoot, handler: rootHandler);
  router.define(routeInbox, handler: inboxHandler);
  router.define(routeAbout, handler: aboutHandler);

  return router;
}

void navigateToAsync(BuildContext context, String path) {
  router.navigateTo(context, path);
}


final notFoundHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('Route not found');
    });

final rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return const HomePage();
    });

final inboxHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return const InboxPage();
    }
);

final aboutHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return const AboutPage();
    }
);