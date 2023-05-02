// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({Key? key}) : super(key: key);

//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();

//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 12,
//   );

//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: GoogleMap(
//       mapType: MapType.hybrid,
//       initialCameraPosition: _kGooglePlex,
//       onMapCreated: (GoogleMapController controller) {
//         _controller.complete(controller);
//       },
//     ),
//     floatingActionButton: FloatingActionButton.extended(
//       onPressed: _goToTheLake,
//       label: const Text('To the lake!'),
//       icon: const Icon(Icons.directions_boat),
//     ),
//   );
// }



//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';

import 'package:latlong2/latlong.dart';

class NearestHospital extends StatefulWidget {
  const NearestHospital({Key? key}) : super(key: key);

  @override
  State<NearestHospital> createState() => _NearestHospitalState();
}

class _NearestHospitalState extends State<NearestHospital> {
  Position? _position;
  void _getCurrentLocation() async {
    Position position = await _determinePosition();
    setState(() {
      _position = position;
    });
  }

  Future<Position> _determinePosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location Permissions are denied');
      }
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    var marker = <Marker>[];
    marker = [
      Marker(
        point: LatLng(-1.9306, 30.1529),
        builder: (context) => const Icon(
          Icons.location_on,
          size: 45.0,
          color: Colors.purple,
        ),
      ),
      Marker(
        point: LatLng(-1.94, 30.09),
        builder: (context) => const Icon(
          Icons.location_city,
          size: 45.0,
          color: Colors.deepPurple,
        ),
      ),
      Marker(
        point: LatLng(-1.957, 30.106),
        builder: (context) => const Icon(
          Icons.location_city,
          size: 45.0,
          color: Colors.deepPurple,
        ),
      ),
      Marker(
        point: LatLng(-1.963, 29.983),
        builder: (context) =>  const Icon(
          Icons.location_city,
          size: 45.0,
          color: Colors.deepPurple,
        ),
      ),
      Marker(
        point: LatLng(-1.949917928426922, 30.243194026096425),
        builder: (context) => const Icon(
          Icons.location_city,
          size: 45.0,
          color: Colors.deepPurple,
        ),
      ),
      Marker(
        point: LatLng(-1.9273207455368977, 30.072963512394804),
        builder: (context) => const Icon(
          Icons.location_city,
          size: 45.0,
          color: Colors.deepPurple,
        ),
      ),
    ];

    return Scaffold(
      body: new FlutterMap(
          options: new MapOptions(
            center: LatLng(-1.9306, 30.1529),
            zoom: 12.0,
          ),
          children: [
            new TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
            new MarkerLayer(
              markers: marker,
            ),
            ElevatedButton(
              child: Text(
                'Get Location',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: _getCurrentLocation,
            ),
            _position != null
                ? Text('Current Location: ' + _position.toString())
                : Text(''),
          ]
          )
    );
  }
}