import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reto_dif/services/service.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late GoogleMapController _googleMapController;
  late Marker _serviceLocation;
  LatLng pos = const LatLng(0, 0);

  Map data = {};
  late DifService service;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    try {
      _googleMapController.dispose();
    } catch (e) {
      print(e);
    }

    super.dispose();
  }

  // Specifies the initial position of the google maps camera

  @override
  Widget build(BuildContext context) {
    CameraPosition _initialCameraPosition = CameraPosition(
      target: pos,
      zoom: 11.5,
    );
    data = ModalRoute.of(context)!.settings.arguments as Map;
    service = data['service'];

    if (pos == const LatLng(0, 0)) {
      getLocation();
    }
    List address = service.addresses;
    print(address);

    _serviceLocation = Marker(
        markerId: const MarkerId('serviceLocation'),
        infoWindow: InfoWindow(title: service.addresses[0]),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position: pos,
        onTap: () {
          print('TAP');
        });

    return Scaffold(
      backgroundColor: Color(0xfffffcf9),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: const Text('Detalles de servicio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 1000,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              color: Colors.blue[700],
              child: Text(
                service.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
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
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/placeholder_service.png',
                image: service.imageUrl,
                height: 220,
                imageErrorBuilder: (context, error, stacktrace) {
                  return Image.asset(
                    'assets/placeholder_service.png',
                    height: 220,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.blue[500],
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: service.description != 'None'
                      ? Text(
                          service.description,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'No hay descripción disponible',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Ubicación",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            service.addresses[0] != ""
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    child: Text(
                      '${service.addresses[0]}',
                      textAlign: TextAlign.center,
                    ),
                  )
                : const Text('No hay dirección disponible'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: SizedBox(
                height: 500,
                child: Scaffold(
                  body: pos != const LatLng(0, 0)
                      ? GoogleMap(
                          key: const Key('GoogleMap'),
                          gestureRecognizers: {
                            Factory<OneSequenceGestureRecognizer>(
                              () => EagerGestureRecognizer(),
                            ),
                          },
                          myLocationButtonEnabled: false,
                          zoomControlsEnabled: false,
                          initialCameraPosition: _initialCameraPosition,
                          onMapCreated: (controller) =>
                              _googleMapController = controller,
                          markers: {
                            _serviceLocation,
                          })
                      : const Center(
                          child: Text(
                            'Mapa no disponible',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                        ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () => _googleMapController.animateCamera(
                      CameraUpdate.newCameraPosition(_initialCameraPosition),
                    ),
                    child: const Icon(Icons.center_focus_strong),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getLocation() async {
    List<Location> locations = await locationFromAddress(service.addresses[0]);

    double lat = locations[0].latitude;
    double lon = locations[0].longitude;

    setState(() {
      pos = LatLng(lat, lon);
    });
  }
}
