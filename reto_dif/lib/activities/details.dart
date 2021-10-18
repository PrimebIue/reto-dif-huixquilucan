import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reto_dif/services/dif_service.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late GoogleMapController _googleMapController;
  late Marker _serviceLocation;
  LatLng pos = LatLng(0, 0);

  Map data = {};
  late DifService service;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  // Specifies the initial position of the google maps camera
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(19.36672811911716, -99.34209809018242),
    zoom: 11.5,
  );

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    service = data['service'];

    if (pos == LatLng(0, 0)) {
      getLocation();
    }
    List address = service.addresses;
    print(address);

    _serviceLocation = Marker(
        markerId: MarkerId('serviceLocation'),
        infoWindow: InfoWindow(title: service.addresses[0]),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position: pos,
        onTap: () {
          print('TAP');
        });

    return Scaffold(
      backgroundColor: Color(0xfffffcf9),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detalles de servicio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              service.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
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
            const SizedBox(
              height: 8,
            ),
            Text(
              service.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(
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
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: SizedBox(
                  height: 500,
                  child: Scaffold(
                    body: GoogleMap(
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
                        }),
                    floatingActionButton: FloatingActionButton(
                      onPressed: () => _googleMapController.animateCamera(
                        CameraUpdate.newCameraPosition(_initialCameraPosition),
                      ),
                      child: const Icon(Icons.center_focus_strong),
                    ),
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

    print(locations);

    double lat = locations[0].latitude;
    double lon = locations[0].longitude;

    setState(() {
      pos = LatLng(lat, lon);
    });
  }
}
