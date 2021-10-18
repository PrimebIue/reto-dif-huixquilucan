import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:reto_dif/services/database.dart';
import 'package:reto_dif/services/dif_category.dart';
import 'package:reto_dif/services/dif_service.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Map data = {};
  int loadingState = 0;

  void setupCategories() async {
    List<DifCategory> categories = await getCategories();
    Navigator.pushReplacementNamed(context, '/categories',
        arguments: {'categories': categories});
  }

  void setupServices(DifCategory category) async {
    List<DifService> services = await getCatServices(category);
    Navigator.pushReplacementNamed(context, '/services',
        arguments: {'services': services});
  }

  @override
  Widget build(BuildContext context) {
    var routeData = ModalRoute.of(context)!.settings.arguments;
    data = routeData != null ? routeData as Map : data;

    loadingState = data.containsKey('loadState') ? data['loadState'] : 0;

    if (loadingState == 0) {
      setupCategories();
    } else if (loadingState == 1) {
      setupServices(data['category']);
    }

    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
