import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:reto_dif/services/database.dart';
import 'package:reto_dif/services/dif_service.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupServices() async {
    List<DifService> services = await getServices();
    Navigator.pushReplacementNamed(context, '/services',
        arguments: {'services': services});
  }

  @override
  void initState() {
    super.initState();
    setupServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
