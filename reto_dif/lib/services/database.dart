import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:reto_dif/services/dif_category.dart';
import 'package:reto_dif/services/dif_service.dart';

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

  var apiResponse = await DifCategory().getAll();

  if (apiResponse.success && apiResponse.results != null) {
    for (var category in apiResponse.result) {
      categories.add(category);
    }
    return categories;
  } else {
    return [];
  }
}

Future<List<DifService>> getCatServices(DifCategory category) async {
  List<DifService> services = [];

  var queryBuilder = QueryBuilder<DifService>(DifService())..whereEqualTo('category_id', category);
  
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
