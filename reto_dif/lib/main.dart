// Data Persistence
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:reto_dif/activities/categories.dart';
import 'package:reto_dif/activities/details.dart';
import 'package:reto_dif/activities/loading.dart';
import 'package:reto_dif/activities/services.dart';
import 'package:reto_dif/services/category.dart';
import 'package:reto_dif/services/service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


Future<void> parseInit() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  String keyApplicationId = dotenv.env['back4appKeyAppId']!;
  String keyClientKey = dotenv.env['back4appClientKey']!;
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
    debug: true,
    registeredSubClassMap: <String, ParseObjectConstructor>{
      'services': () => DifService(),
      'categories': () => DifCategory(),
    },
  );

  ParseCoreData.instance.registerSubClass("services", () => DifService());
  ParseCoreData.instance.registerSubClass("categories", () => DifCategory());
}

void main() async {
  await parseInit();

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/categories': (context) => const Categories(),
      '/services': (context) => const Services(),
      '/details': (context) => const Details(),
    },
  ));
}
