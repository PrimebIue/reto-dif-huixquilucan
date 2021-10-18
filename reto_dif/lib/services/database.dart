import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:reto_dif/services/dif_category.dart';
import 'package:reto_dif/services/dif_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<DifService>> getAllServices() async {
  List<DifService> services = [];

  var apiResponse = await DifService().getAll();

  if (apiResponse.success && apiResponse.results != null) {
    for (var service in apiResponse.result) {
      services.add(service);
    }
    return services;
  } else {
    return [];
  }
}

Future<List<DifCategory>> getCategories() async {
  List<DifCategory> categories = [];
  List<String> objectIds = [];

  var apiResponse = await DifCategory().getAll();

  if (apiResponse.success && apiResponse.results != null) {
    for (var category in apiResponse.result) {
      category.pin();
      objectIds.add(category.objectId);
      categories.add(category);
    }
    storeStringList(objectIds, 'categories');
    return categories;
  } else {
    // Iterate through my local objects and create the list
    objectIds = (await getStringList('categories'))!;
    for (var i = 0; i < objectIds.length; i++) {
      var category = await DifCategory().fromPin(objectIds[i]);
      categories.add(category);
    }
    return categories;
  }
}

Future<List<DifService>> getCatServices(DifCategory category) async {
  List<DifService> services = [];

  var queryBuilder = QueryBuilder<DifService>(DifService())
    ..whereEqualTo('category_id', category);

  var apiResponse = await queryBuilder.query();

  if (apiResponse.success && apiResponse.results != null) {
    for (var service in apiResponse.result) {
      services.add(service);
    }
    return services;
  } else {
    return [];
  }
}

void storeStringList(List<String> list, String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setStringList(key, list);
}

Future<List<String>?> getStringList(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getStringList(key);
}
