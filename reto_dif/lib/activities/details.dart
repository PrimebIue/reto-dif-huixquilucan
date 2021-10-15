import 'package:flutter/material.dart';
import 'package:reto_dif/services/dif_service.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Map data = {};
  late DifService service;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    service = data['service'];

    return Scaffold(
      backgroundColor: Color(0xfffffcf9),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detalles de servicio'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  service.get<String>('name') as String,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  service.imageUrl,
                  height: 220,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                service.description,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
