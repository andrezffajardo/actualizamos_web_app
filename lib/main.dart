import 'package:actualizamos_web_app/src/my_web_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'Actualizamos - Consultores',
        home: MyWebPage(),
      ),
    ),
  );
}
