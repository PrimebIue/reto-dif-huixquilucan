import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:reto_dif/activities/details.dart';
import 'package:reto_dif/activities/loading.dart';
import 'package:reto_dif/activities/services.dart';
import 'package:reto_dif/services/dif_service.dart';

Future<void> parseInit() async {
  WidgetsFlutterBinding.ensureInitialized();

  const keyApplicationId = 'osRmV2PsRGLXOvrHJXczBTM23BwpCVN3tSB4dlzs';
  const keyClientKey = 'qaq3zMTlnbJnfa3ekhSJ5J2tkTMfLX7LWnDwiymn';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
    debug: true,
    registeredSubClassMap: <String, ParseObjectConstructor>{
      'services': () => DifService(),
    },
  );

  ParseCoreData.instance.registerSubClass("services", () => DifService());
}

void main() async {
  await parseInit();

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/services': (context) => Services(),
      '/details': (context) => Details(),
    },
  ));
}
