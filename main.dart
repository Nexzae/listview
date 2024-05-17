import 'package:flutter/material.dart';
import 'detail_shop.dart';
import 'list_shop.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
