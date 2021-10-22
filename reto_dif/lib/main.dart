
import 'package:flutter/material.dart';
import 'package:reto_dif/activities/categories.dart';
import 'package:reto_dif/activities/details.dart';
import 'package:reto_dif/activities/loading.dart';
import 'package:reto_dif/activities/services.dart';

void main() async {
  runApp(const DifApp());
}

class DifApp extends StatelessWidget {
  const DifApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/categories': (context) => const Categories(),
        '/services': (context) => const Services(),
        '/details': (context) => const Details(),
      },
    );
  }
}
