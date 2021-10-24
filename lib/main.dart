// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore_for_file: camel_case_types

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'faltu_ka_name.dart';
import 'summary.dart';
import 'image.dart';
import 'did_you_know.dart';
import 'style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fist App',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(textTheme: TextTheme(subtitle1: AppBarTextStyle)),
        textTheme: TextTheme(bodyText1: Body1TextStyle),
      ),
      home: const locationdetail(title: 'Location Detail'),
    );
  }
}

// ignore: camel_case_types
class locationdetail extends StatelessWidget {
  final String title;
  const locationdetail({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      // ignore: avoid_unnecessary_containers
      body: ListView(
        children: [
          image("assets/images/kiyomizu-dera.jpg"),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          faltu_ka_name("summary", "dnkjewniwoefwiencvwev"),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          const summary(),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          const did_you_know(),
        ],
      ),
      bottomNavigationBar: const Text("Kuch nhi hai bhai abhi"),
    );
  }
}
