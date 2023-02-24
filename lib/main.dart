import 'package:flutter/material.dart';
import 'package:test_app/Homepage.dart';
import 'package:provider/provider.dart';
import 'package:test_app/providerdemo.dart';
import 'package:test_app/providerdemo2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => provividerdemo()),
        ChangeNotifierProvider(create: (context) => providerdemo2()),
      ],
      child: MaterialApp(
        home: page1(),
      ),
    );
  }
}
