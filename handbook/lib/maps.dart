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
        point: LatLng(-1.931419, 30.152651),
        builder: (context) => const Icon(
          Icons.location_on,
          size: 45.0,
          color: Color.fromRGBO(234, 67, 53, 1.0),
        ),
      ),
      Marker(
        point: LatLng(-1.9421780876936376, 30.096464738287892),
        builder: (context) => const Icon(
          Icons.local_hospital,
          size: 45.0,
          color: Color.fromRGBO(234, 67, 53, 1.0),
        ),
      ),
      Marker(
        point: LatLng(-1.9783808142785768, 30.16737530402884),
        builder: (context) => const Icon(
          Icons.local_hospital,
          size: 45.0,
          color: Color.fromRGBO(234, 67, 53, 1.0),
        ),
      ),
      Marker(
        point: LatLng(-1.9281093599807024, 30.11191465705272),
        builder: (context) =>  const Icon(
          Icons.local_hospital,
          size: 45.0,
          color: Color.fromRGBO(234, 67, 53, 1.0),
        ),
      ),
      Marker(
        point: LatLng(-1.9435505157785216, 30.060587388260092),
        builder: (context) => const Icon(
          Icons.local_hospital,
          size: 45.0,
          color: Color.fromRGBO(234, 67, 53, 1.0),
        ),
      ),
      Marker(
        point: LatLng(-1.957446854126324, 30.106421684390924),
        builder: (context) => const Icon(
          Icons.local_hospital,
          size: 45.0,
          color: Color.fromRGBO(234, 67, 53, 1.0),
        ),
      ),
    ];



    return Scaffold(
      body:  FlutterMap(
          options:  MapOptions(
            center: LatLng(-1.9306, 30.1529),
            zoom: 12.0,
          ),
          children: [
             TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
             MarkerLayer(
              markers: marker,
            ),
            
            // ElevatedButton(
            //   child: Text(
            //     'Get Location',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   onPressed: _getCurrentLocation,
            // ),
            // _position != null
            //     ? Text('Current Location: ' + _position.toString())
            //     : Text(''),
          ]
          )
    );



  }
}