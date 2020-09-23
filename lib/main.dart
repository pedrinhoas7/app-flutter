import 'dart:async';

import 'package:app_flutter/AppMenuBar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


void main() => runApp(AppMenuBar());
class MyApp extends StatelessWidget {
  

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  

  static final CameraPosition _kPersonalCam = CameraPosition(
    target: LatLng(-7.1195, -34.8450),
    zoom: 13.1,
  );

  static final CameraPosition _kPersonalRom = CameraPosition(
      bearing: 130.8,
      target: LatLng(-7.1589, -34.8551),
      tilt: 20.2,
      zoom: 17);

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kPersonalCam,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _gotToThePersonalRom,
        label: Text('To the lake!'),
        icon: Icon(Icons.edit
        ),
      ),
    );
  }

  Future<void> _gotToThePersonalRom() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kPersonalRom));
  }
}