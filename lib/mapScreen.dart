import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key,}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();

}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(30.7712, 76.5783);


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),),
        backgroundColor: Colors.red.shade600,
      ),
      body: GoogleMap(
        mapType: MapType.terrain,
        markers: Set<Marker>.of([
          Marker(
              markerId: MarkerId('1'),
              position: LatLng(30.7712, 76.5783),
              infoWindow: InfoWindow(
                  title: "My Location"
              )
          ),
        ]),
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.5,
        ),
      ),
    );
  }
}
