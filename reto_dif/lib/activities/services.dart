import 'package:flutter/material.dart';
import 'package:reto_dif/services/dif_service.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  Map data = {};
  List<DifService> services = [];

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    services = data['services'];

    return Scaffold(
      backgroundColor: Color(0xfffffcf9),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Servicios Dif Huixquilucan'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
            child: InkWell(
              onTap: () {
                goToServiceDetails(services[index]);
              },
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    )),
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          services[index].imageUrl,
                          height: 100.0,
                          width: 150.0,
                        ),
                      ),
                      const SizedBox(
                        width: 9.0,
                      ),
                      Flexible(
                          child: Text(
                        services[index].name,
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void goToServiceDetails(DifService service) {
    Navigator.pushNamed(context, '/details', arguments: {'service': service});
  }
}
