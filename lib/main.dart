
import 'package:flutter/material.dart';
import 'modules/screens/maspaha.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body:  Center(
          child: Sepha(),
        ),
      ),
    );
  }
}

