import 'package:flutter/material.dart';
import 'list_page.dart';

void main() {
  runApp(FridgeExpirationTrackerApp());
}

class FridgeExpirationTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fridge Expiration Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListPage()
    );
  }
}