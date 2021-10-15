import 'package:reto_dif/services/dif_service.dart';

Future<List<DifService>> getServices() async {
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
